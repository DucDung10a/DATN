module dds_0(
    input wire sclk,
    input wire [17:0] s_axis_config_tdata,
    input wire s_axis_config_tvalid,
    input wire aresetn,
//    input wire s_ready,
    input wire [2:0] pos_radar,
    
    output wire signed [15:0] dout,
    output wire m_axis_data_tvalid
);

  wire signed [15:0] dds_output;
  reg signed [10:0] lfsr_noise;
  
  always @(posedge sclk or negedge aresetn) begin
    if (!aresetn) begin
      lfsr_noise <= 11'b00101110101; 
    end else begin
      lfsr_noise <= {lfsr_noise[9:0], lfsr_noise[10] ^ lfsr_noise[7]};
    end
  end

  assign dout = (pos_radar == 1) ? (dds_output + lfsr_noise) : dds_output;

  dds_compiler_0 inst_dds_0 (
      .aclk(sclk),   
      .aresetn(aresetn),
      .s_axis_config_tdata(s_axis_config_tdata),
      .s_axis_config_tvalid(s_axis_config_tvalid),
      .m_axis_data_tvalid(m_axis_data_tvalid),
      .m_axis_data_tdata(dds_output)
  );

endmodule



module dds_1(
    input wire sclk,
    input wire [17:0] s_axis_config_tdata,
    input wire s_axis_config_tvalid,
    input wire aresetn,
    input wire s_ready,
    input wire [2:0] pos_radar,
    
    output wire signed [15:0] dout,
    output wire m_axis_data_tvalid
);

  wire signed [15:0] dds_output;
  reg signed [10:0] lfsr_noise;
  
  always @(posedge sclk or negedge aresetn) begin
    if (!aresetn) begin
      lfsr_noise <= 11'b10101110011; 
    end else begin
      lfsr_noise <= {lfsr_noise[9:0], lfsr_noise[10] ^ lfsr_noise[4]};
    end
  end

  assign dout = (pos_radar == 1) ? (dds_output + lfsr_noise) : dds_output;
  
  dds_compiler_1 inst_dds_1 (
      .aclk(sclk),   
      .aresetn(aresetn),
      .s_axis_config_tdata(s_axis_config_tdata),
      .s_axis_config_tvalid(s_axis_config_tvalid),
      .m_axis_data_tvalid(m_axis_data_tvalid),
      .m_axis_data_tdata(dds_output)
  );

endmodule



module dds_2(
    input wire sclk,
    input wire [17:0] s_axis_config_tdata,
    input wire s_axis_config_tvalid,
    input wire aresetn,
    input wire s_ready,
    input wire [2:0] pos_radar,
    
    output wire signed [15:0] dout,
    output wire m_axis_data_tvalid
);

  wire signed [15:0] dds_output;
  reg signed [10:0] lfsr_noise;
  
  always @(posedge sclk or negedge aresetn) begin
    if (!aresetn) begin
      lfsr_noise <= 11'b01100010101; 
    end else begin
      lfsr_noise <= {lfsr_noise[9:0], lfsr_noise[10] ^ lfsr_noise[1]};
    end
  end

  assign dout = (pos_radar == 1) ? (dds_output + lfsr_noise) : dds_output;

  dds_compiler_2 inst_dds_2 (
      .aclk(sclk),   
      .aresetn(aresetn),
      .s_axis_config_tdata(s_axis_config_tdata),
      .s_axis_config_tvalid(s_axis_config_tvalid),
      .m_axis_data_tvalid(m_axis_data_tvalid),
      .m_axis_data_tdata(dds_output)
  );

endmodule