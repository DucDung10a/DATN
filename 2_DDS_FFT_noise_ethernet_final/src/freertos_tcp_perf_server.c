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

#include "freertos_tcp_perf_server.h"
#include "myFFT.h"
#include "xparameters.h"
#include "xil_io.h"
#include "xbasic_types.h"

extern struct netif server_netif;
static struct perf_stats server;

/* Interval time in seconds */
#define REPORT_INTERVAL_TIME (INTERIM_REPORT_INTERVAL * 1000)

void print_app_header(void)
{
	xil_printf("TCP server listening on port %d\r\n",
			TCP_CONN_PORT);
#if LWIP_IPV6==1
	xil_printf("On Host: Run $iperf -V -c %s%%<interface> -i %d -t 300 -w 2M\r\n",
			inet6_ntoa(server_netif.ip6_addr[0]),
			INTERIM_REPORT_INTERVAL);
#else
	xil_printf("On Host: Run $iperf -c %s -i %d -t 300 -w 2M\r\n",
			inet_ntoa(server_netif.ip_addr),
			INTERIM_REPORT_INTERVAL);
#endif /* LWIP_IPV6 */
}

static void print_tcp_conn_stats(int sock)
{
#if LWIP_IPV6==1
	struct sockaddr_in6 local, remote;
#else
	struct sockaddr_in local, remote;
#endif /* LWIP_IPV6 */
	int size;

	size = sizeof(local);
	getsockname(sock, (struct sockaddr *)&local, (socklen_t *)&size);
	getpeername(sock, (struct sockaddr *)&remote, (socklen_t *)&size);
#if LWIP_IPV6==1
	xil_printf("[%3d] local %s port %d connected with ", server.client_id,
			inet6_ntoa(local.sin6_addr), ntohs(local.sin6_port));
	xil_printf("%s port %d\r\n", inet6_ntoa(remote.sin6_addr),
			ntohs(local.sin6_port));
#else
	xil_printf("[%3d] local %s port %d connected with ", server.client_id,
			inet_ntoa(local.sin_addr), ntohs(local.sin_port));
	xil_printf("%s port %d\r\n", inet_ntoa(remote.sin_addr),
			ntohs(local.sin_port));
#endif /* LWIP_IPV6 */
	xil_printf("[ ID] Interval    Transfer     Bandwidth\n\r");
}

static void stats_buffer(char* outString, double data, enum measure_t type)
{
	int conv = KCONV_UNIT;
	const char *format;
	double unit = 1024.0;

	if (type == SPEED)
		unit = 1000.0;

	while (data >= unit && conv <= KCONV_GIGA) {
		data /= unit;
		conv++;
	}

	/* Fit data in 4 places */
	if (data < 9.995) { /* 9.995 rounded to 10.0 */
		format = "%4.2f %c"; /* #.## */
	} else if (data < 99.95) { /* 99.95 rounded to 100 */
		format = "%4.1f %c"; /* ##.# */
	} else {
		format = "%4.0f %c"; /* #### */
	}
	sprintf(outString, format, data, kLabel[conv]);
}

/* The report function of a TCP server session */
static void tcp_conn_report(u64_t diff, enum report_type report_type)
{
	u64_t total_len;
	double duration, bandwidth = 0;
	char data[16], perf[16], time[64];

	if (report_type == INTER_REPORT) {
		total_len = server.i_report.total_bytes;
	} else {
		server.i_report.last_report_time = 0;
		total_len = server.total_bytes;
	}

	/* Converting duration from milliseconds to secs,
	 * and bandwidth to bits/sec .
	 */
	duration = diff / 1000.0; /* secs */
	if (duration)
		bandwidth = (total_len / duration) * 8.0;

	stats_buffer(data, total_len, BYTES);
	stats_buffer(perf, bandwidth, SPEED);
	/* On 32-bit platforms, xil_printf is not able to print
	 * u64_t values, so converting these values in strings and
	 * displaying results
	 */
	sprintf(time, "%4.1f-%4.1f sec",
			(double)server.i_report.last_report_time,
			(double)(server.i_report.last_report_time + duration));
	xil_printf("[%3d] %s  %sBytes  %sbits/sec\n\r", server.client_id,
			time, data, perf);

	if (report_type == INTER_REPORT)
		server.i_report.last_report_time += duration;
}


//#define QUEUE_LENGTH 10 // Độ dài của hàng đợi (số lượng gói tin)
//
//QueueHandle_t xQueue;

void tcp_read_task(void *p)
{
    u8 recv_buf[RECV_BUF_SIZE];
    int read_bytes;
    int sock = *((int *)p);

    while (1) {
        // Đọc dữ liệu từ socket
    	//[0]: LSB in client
    	//[read_bytes-1]: MSB in client
        if ((read_bytes = lwip_recvfrom(sock, recv_buf, RECV_BUF_SIZE, 0, NULL, NULL)) < 0) {
            break; //có lỗi xảy ra
        }
        u32 phase_incr0 = (uint)(recv_buf[0]*2621.44);
        u32 phase_incr1 = (uint)(recv_buf[1]*2621.44);
        u32 phase_incr2 = (uint)(recv_buf[2]*2621.44);
        u8 pos_radar = (uint)(recv_buf[3]);
        xil_printf("Data0: %d \n\r", phase_incr0);
        xil_printf("Data1: %d \n\r", phase_incr1);
        xil_printf("Data2: %d \n\r", phase_incr2);
        xil_printf("Data3: %d \n\r", recv_buf[3] );
        // Nếu client đóng kết nối
        if (read_bytes == 0) {
            xil_printf("TCP test passed Successfully\n\r");
            break;
        }

        Xil_Out32(XPAR_MYFFT_0_S00_AXI_BASEADDR + MYFFT_S00_AXI_SLV_REG4_OFFSET, phase_incr0 | (pos_radar << 24));
        Xil_Out32(XPAR_MYFFT_0_S00_AXI_BASEADDR + MYFFT_S00_AXI_SLV_REG5_OFFSET, phase_incr1);
        Xil_Out32(XPAR_MYFFT_0_S00_AXI_BASEADDR + MYFFT_S00_AXI_SLV_REG6_OFFSET, phase_incr2);

        vTaskDelay(pdMS_TO_TICKS(10));
    }

    close(sock);
    vTaskDelete(NULL);
}


void tcp_write_task(void *p)
{
    int sock = *((int *)p);
    u16 pos_sample_psd;
    uint64_t psd_avg [1024];

    while (1) {
//        psd_avg = 0;
        pos_sample_psd = 0;
//        for (int i = 0; i < 1024; i++) {
//            psd_avg[i] = 0;
//        }
        while ((Xil_In32(XPAR_MYFFT_0_S00_AXI_BASEADDR + MYFFT_S00_AXI_SLV_REG1_OFFSET)) != 0x03) {};
        while (pos_sample_psd < 1024) {
            psd_avg[pos_sample_psd] = (u64)pos_sample_psd << 48 |
            		  ((u64)Xil_In32(XPAR_MYFFT_0_S00_AXI_BASEADDR + MYFFT_S00_AXI_SLV_REG3_OFFSET) << 32) |
            		  ((u64)Xil_In32(XPAR_MYFFT_0_S00_AXI_BASEADDR + MYFFT_S00_AXI_SLV_REG2_OFFSET) << 0) ;
            pos_sample_psd++;
            Xil_Out32(XPAR_MYFFT_0_S00_AXI_BASEADDR + MYFFT_S00_AXI_SLV_REG0_OFFSET, pos_sample_psd);
        }
        if (lwip_send(sock, psd_avg, sizeof(psd_avg) , 0) < 0) {
        	xil_printf("Error sending data to client\n\r");
        	break;
        }
        vTaskDelay(pdMS_TO_TICKS(200));
    }

    close(sock);
    vTaskDelete(NULL);
}

void start_application(void)
{
	int sock, new_sd;
#if LWIP_IPV6==1
	struct sockaddr_in6 address, remote;
#else
	struct sockaddr_in address, remote;
#endif /* LWIP_IPV6 */
	int size;

	/* set up address to connect to */
        memset(&address, 0, sizeof(address));
#if LWIP_IPV6==1
    // Tạo một socket TCP cho server sử dụng IPV6
	if ((sock = lwip_socket(AF_INET6, SOCK_STREAM, 0)) < 0) {
		xil_printf("TCP server: Error creating Socket\r\n");
		return;
	}
	// Cấu hình địa chỉ và gán socket
	address.sin6_family = AF_INET6;
	address.sin6_port = htons(TCP_CONN_PORT);
	address.sin6_len = sizeof(address);
#else
	// Tạo một socket TCP cho server sử dụng IPV4
	if ((sock = lwip_socket(AF_INET, SOCK_STREAM, 0)) < 0) {
		xil_printf("TCP server: Error creating Socket\r\n");
		return;
	}
	address.sin_family = AF_INET;
	address.sin_port = htons(TCP_CONN_PORT);
	address.sin_addr.s_addr = INADDR_ANY;
#endif /* LWIP_IPV6 */

	if (bind(sock, (struct sockaddr *)&address, sizeof (address)) < 0) {
		xil_printf("TCP server: Unable to bind to port %d\r\n",
				TCP_CONN_PORT);
		close(sock);
		return;
	}
	// Lắng nghe kết nối đến
	if (listen(sock, 1) < 0) {
		xil_printf("TCP server: tcp_listen failed\r\n");
		close(sock);
		return;
	}

	size = sizeof(remote);

    Xil_Out32(XPAR_MYFFT_0_S00_AXI_BASEADDR + MYFFT_S00_AXI_SLV_REG4_OFFSET, 1000);
    Xil_Out32(XPAR_MYFFT_0_S00_AXI_BASEADDR + MYFFT_S00_AXI_SLV_REG5_OFFSET, 1000);
    Xil_Out32(XPAR_MYFFT_0_S00_AXI_BASEADDR + MYFFT_S00_AXI_SLV_REG6_OFFSET, 1000);

	while (1) {

		// Server chấp nhận kết nối từ client và lưu trữ thông tin địa chỉ của client trong remote.
		// Khi có kết nối mới, server tạo một socket mới new_sd cho kết nối đó.
		if ((new_sd = accept(sock, (struct sockaddr *)&remote,
						(socklen_t *)&size)) > 0){
			// Server sẽ tạo một luồng mới để xử lý dữ liệu nhận từ client
			sys_thread_new("ReadTask",
				tcp_read_task, (void*)&new_sd,
				TCP_SERVER_THREAD_STACKSIZE,
				DEFAULT_THREAD_PRIO + 1);
			sys_thread_new("WriteTask",
				tcp_write_task, (void *)&new_sd,
				TCP_SERVER_THREAD_STACKSIZE,
				DEFAULT_THREAD_PRIO);
		}
	}
}
