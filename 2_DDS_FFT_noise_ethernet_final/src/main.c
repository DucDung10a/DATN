/*
 * Copyright (C) 2018 - 2019 Xilinx, Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
 * SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT
 * OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
 * IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY
 * OF SUCH DAMAGE.
 *
 */

#include <sleep.h>
#include "netif/xadapter.h"
#include "platform_config.h"
#include "xil_printf.h"
#include "lwip/init.h"
#include "lwip/inet.h"

#if LWIP_IPV6==1
#include "lwip/ip6_addr.h"
#include "lwip/ip6.h"
#else

#if LWIP_DHCP==1
#include "lwip/dhcp.h"
extern volatile int dhcp_timoutcntr;
err_t dhcp_start(struct netif *netif);
#endif
#define DEFAULT_IP_ADDRESS "192.168.1.28"
#define DEFAULT_IP_MASK "255.255.255.0"
#define DEFAULT_GW_ADDRESS "192.168.1.1"
#endif /* LWIP_IPV6 */

#ifdef XPS_BOARD_ZCU102
#ifdef XPAR_XIICPS_0_DEVICE_ID
int IicPhyReset(void);
#endif
#endif

static int complete_nw_thread;
static sys_thread_t main_thread_handle;

void print_app_header();
void start_application();

#define THREAD_STACKSIZE 1024

struct netif server_netif;

#if LWIP_IPV6==1
static void print_ipv6(char *msg, ip_addr_t *ip)
{
	print(msg);
	xil_printf(" %s\n\r", inet6_ntoa(*ip));
}
#else

static void print_ip(char *msg, ip_addr_t *ip)
{
	xil_printf(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
				ip4_addr3(ip), ip4_addr4(ip));
}

static void print_ip_settings(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	print_ip("Board IP:       ", ip);
	print_ip("Netmask :       ", mask);
	print_ip("Gateway :       ", gw);
}

static void assign_default_ip(ip_addr_t *ip, ip_addr_t *mask, ip_addr_t *gw)
{
	int err;

	xil_printf("Configuring default IP %s \r\n", DEFAULT_IP_ADDRESS);

	err = inet_aton(DEFAULT_IP_ADDRESS, ip);
	if(!err)
		xil_printf("Invalid default IP address: %d\r\n", err);

	err = inet_aton(DEFAULT_IP_MASK, mask);
	if(!err)
		xil_printf("Invalid default IP MASK: %d\r\n", err);

	err = inet_aton(DEFAULT_GW_ADDRESS, gw);
	if(!err)
		xil_printf("Invalid default gateway address: %d\r\n", err);
}
#endif /* LWIP_IPV6 */


// Khởi tạo giao diện mạng, bao gồm thiết lập địa chỉ MAC,
// cấu hình giao diện mạng, tạo luồng để xử lý việc nhận gói tin,
// và bắt đầu quá trình DHCP để lấy địa chỉ IP động.
void network_thread(void *p)
{
	// Đếm thời gian đã trôi qua trong quá trình chờ DHCP cấp phát địa chỉ IP
#if ((LWIP_IPV6==0) && (LWIP_DHCP==1))
	int mscnt = 0;
#endif

	/* the mac address of the board. this should be unique per board */
	//Địa chỉ MAC duy nhất cho mỗi bo mạch. Đây là địa chỉ vật lý của giao diện mạng trên bo mạch.
	//Địa chỉ MAC là 00:0a:35:00:01:02
	u8_t mac_ethernet_address[] = { 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

	xil_printf("\n\r\n\r");
	xil_printf("-----lwIP Socket Mode TCP Server Application------\r\n");

	/* Add network interface to the netif_list, and set it as default */
	// Khởi tạo và thêm một giao diện mạng vào hệ thống dựa trên loại MAC của thiết bị.
	if (!xemac_add(&server_netif, NULL, NULL, NULL, mac_ethernet_address,
		PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\r\n");
		return;
	}

#if LWIP_IPV6==1
	server_netif.ip6_autoconfig_enabled = 1;
	netif_create_ip6_linklocal_address(&server_netif, 1);
	netif_ip6_addr_set_state(&server_netif, 0, IP6_ADDR_VALID);
	print_ipv6("\n\rlink local IPv6 address is:",&server_netif.ip6_addr[0]);
#endif /* LWIP_IPV6 */

	// Giao diện mạng server_netif được đặt làm giao diện mạng mặc định cho hệ thống.
	netif_set_default(&server_netif);

	/* specify that the network if is up */
	// Đánh dấu giao diện mạng là "đã hoạt động" (sẵn sàng gửi và nhận dữ liệu).
	netif_set_up(&server_netif);

	/* start packet receive thread - required for lwIP operation */
	// Tạo một luồng mới để xử lý việc nhận gói tin mạng. Luồng này sẽ thực thi hàm xemacif_input_thread.
	sys_thread_new("xemacif_input_thread",
			(void(*)(void*))xemacif_input_thread, &server_netif,
			THREAD_STACKSIZE, DEFAULT_THREAD_PRIO);

	// Luồng mạng đã hoàn tất việc thiết lập.
	complete_nw_thread = 1;

	/* Resume the main thread; auto-negotiation is completed */
	//tiếp tục luồng chính (main_thread_handle) sau khi quá trình đàm phán mạng đã hoàn tất.
	vTaskResume(main_thread_handle);

#if ((LWIP_IPV6==0) && (LWIP_DHCP==1))
	dhcp_start(&server_netif);
	while (1) {
		vTaskDelay(DHCP_FINE_TIMER_MSECS / portTICK_RATE_MS);
		dhcp_fine_tmr();
		mscnt += DHCP_FINE_TIMER_MSECS;
		if (mscnt >= DHCP_COARSE_TIMER_SECS*1000) {
			dhcp_coarse_tmr();
			mscnt = 0;
		}
	}
#else
	vTaskDelete(NULL);
#endif
}


// Hàm main_thread chịu trách nhiệm khởi tạo ngăn xếp mạng lwIP, tạo luồng mạng,
// quản lý quá trình cấu hình DHCP hoặc cấu hình IP tĩnh nếu DHCP thất bại,
// và sau đó khởi động ứng dụng mạng. Task hiện tại sẽ tự động kết thúc sau khi hoàn thành các tác vụ này.
void main_thread(void *p)
{
	// Kiểm tra để khởi tạo biến đếm thời gian cho DHCP
#if ((LWIP_IPV6==0) && (LWIP_DHCP==1))
	int mscnt = 0;
#endif

	// Khởi động lại PHY
#ifdef XPS_BOARD_ZCU102
	IicPhyReset();
#endif

	// Khởi tạo ngăn xếp TCP/IP của lwIP, bao gồm các cấu trúc dữ liệu và các thành phần cần thiết để hỗ trợ giao thức mạng.
	// Trước khi gọi sys_thread_new
	lwip_init();

	/* any thread using lwIP should be created using sys_thread_new */
	// Tạo một luồng mạng mới bằng cách gọi sys_thread_new
	// Tên luồng "nw_thread", thực thi hàm network_thread.
	sys_thread_new("nw_thread", network_thread, NULL,
			THREAD_STACKSIZE, DEFAULT_THREAD_PRIO);

	/* Suspend Task until auto-negotiation is completed */
	// Tạm dừng tác vụ cho đến khi quá trình tự động đàm phán hoàn tất
	if (!complete_nw_thread)
		vTaskSuspend(NULL);

#if LWIP_IPV6==0
#if LWIP_DHCP==1
	while (1) {

		// Mỗi DHCP_FINE_TIMER_MSECS, hệ thống kiểm tra xem DHCP đã cấp phát địa chỉ IP thành công  chưa
		vTaskDelay(DHCP_FINE_TIMER_MSECS / portTICK_RATE_MS);
		if (server_netif.ip_addr.addr) {
			xil_printf("DHCP request success\r\n");
			break;
		}
		mscnt += DHCP_FINE_TIMER_MSECS;

		//Nếu sau 10 giây mà DHCP không thành công, hệ thống sẽ gán một địa chỉ IP tĩnh (IPv4) mặc định
		if (mscnt >= 10000) {
			xil_printf("ERROR: DHCP request timed out\r\n");
			assign_default_ip(&(server_netif.ip_addr),
						&(server_netif.netmask),
						&(server_netif.gw));
			break;
		}
	}

#else //LWIP_DHCP = 0
	assign_default_ip(&(server_netif.ip_addr), &(server_netif.netmask),
				&(server_netif.gw));
#endif

	print_ip_settings(&(server_netif.ip_addr), &(server_netif.netmask),
				&(server_netif.gw));
#endif /* LWIP_IPV6 */

	xil_printf("\r\n");

	/* print all application headers */
	print_app_header();
	xil_printf("\r\n");

	/* start the application*/
	// Khởi động ứng dụng chính của hệ thống
	start_application();

	// Khi nhiệm vụ của main_thread đã hoàn tất, task này sẽ tự xóa để giải phóng tài nguyên.
	vTaskDelete(NULL);
	return;
}

int main()
{
	// Hàm main() thiết lập và khởi động một luồng mới, sau đó giao quyền kiểm soát
	// cho bộ lập lịch để quản lý việc thực thi các luồng trong hệ thống.
	main_thread_handle = sys_thread_new("main_thread", main_thread, 0,
			THREAD_STACKSIZE, DEFAULT_THREAD_PRIO);
	vTaskStartScheduler();
	while(1);
	return 0;
}
