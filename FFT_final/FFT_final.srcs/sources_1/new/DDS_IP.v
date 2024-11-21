module dds_0(
    input wire sclk,
    input wire [17:0] s_axis_config_tdata,
    input wire s_axis_config_tvalid,
    input wire aresetn,
    output wire [15:0] dout,
    output wire m_axis_data_tvalid
);

  wire [15:0] dds_output;
  reg [3:0] lfsr_noise; 
    
  always @(posedge sclk or posedge aresetn) begin
    if (aresetn) begin
      lfsr_noise <= 4'b0101;
    end else begin
      lfsr_noise <= {lfsr_noise[2:0], lfsr_noise[3] ^ lfsr_noise[2]};
    end
  end

  assign dout = dds_output + {12'b0, lfsr_noise};

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
    output wire [15:0] dout,
    output wire m_axis_data_tvalid
);

  wire [15:0] dds_output; 
  reg [3:0] lfsr_noise; 
    
  always @(posedge sclk or posedge aresetn) begin
    if (aresetn) begin
      lfsr_noise <= 4'b1110;
    end else begin
      lfsr_noise <= {lfsr_noise[2:0], lfsr_noise[3] ^ lfsr_noise[1]};
    end
  end

  assign dout = dds_output + {12'b0, lfsr_noise}; 

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
    output wire [15:0] dout,
    output wire m_axis_data_tvalid
);

  wire [15:0] dds_output; 
  reg [3:0] lfsr_noise;
    
  always @(posedge sclk or posedge aresetn) begin
    if (aresetn) begin
      lfsr_noise <= 4'b0010; 
    end else begin
      lfsr_noise <= {lfsr_noise[2:0], lfsr_noise[3] ^ lfsr_noise[1]};
    end
  end

  assign dout = dds_output + {12'b0, lfsr_noise};

  dds_compiler_2 inst_dds_2 (
      .aclk(sclk),   
      .aresetn(aresetn),
      .s_axis_config_tdata(s_axis_config_tdata),
      .s_axis_config_tvalid(s_axis_config_tvalid),
      .m_axis_data_tvalid(m_axis_data_tvalid),
      .m_axis_data_tdata(dds_output)
  );

endmodule