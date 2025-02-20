// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Thu Feb 20 14:27:34 2025
// Host        : dedippcaa90.extra.cea.fr running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /local/home/mb274643/Desktop/vivado_projects/emul_demux_simpleDMA/emul_demux_simpleDMA.gen/sources_1/bd/design_1/ip/design_1_emul_demux_SM_0_1/design_1_emul_demux_SM_0_1_stub.v
// Design      : design_1_emul_demux_SM_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu4eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "top_wrapper,Vivado 2023.2" *)
module design_1_emul_demux_SM_0_1(aresetn, clk_sys, O_CLK_SCIENCE_01, 
  O_SCIENCE_CTRL_01, O_DEMUX_C0, O_DEMUX_C1, O_CLK_SCIENCE_23, O_SCIENCE_CTRL_23, O_DEMUX_C2, 
  O_DEMUX_C3, O_finished, s_axi_aclk, s_axi_aresetn, s_axi_awaddr, s_axi_awprot, s_axi_awvalid, 
  s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, s_axi_bresp, 
  s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arprot, s_axi_arvalid, s_axi_arready, 
  s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, s_axis_aclk, s_axis_aresetn, 
  s_axis_tready, s_axis_tdata, s_axis_tstrb, s_axis_tlast, s_axis_tvalid, m_axis_aclk, 
  m_axis_aresetn, m_axis_tvalid, m_axis_tdata, m_axis_tstrb, m_axis_tlast, m_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="aresetn,clk_sys,O_CLK_SCIENCE_01,O_SCIENCE_CTRL_01,O_DEMUX_C0[1:0],O_DEMUX_C1[1:0],O_CLK_SCIENCE_23,O_SCIENCE_CTRL_23,O_DEMUX_C2[1:0],O_DEMUX_C3[1:0],O_finished,s_axi_aresetn,s_axi_awaddr[7:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[7:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,s_axis_aclk,s_axis_aresetn,s_axis_tready,s_axis_tdata[31:0],s_axis_tstrb[3:0],s_axis_tlast,s_axis_tvalid,m_axis_aresetn,m_axis_tvalid,m_axis_tdata[31:0],m_axis_tstrb[3:0],m_axis_tlast,m_axis_tready" */
/* synthesis syn_force_seq_prim="s_axi_aclk" */
/* synthesis syn_force_seq_prim="m_axis_aclk" */;
  input aresetn;
  input clk_sys;
  output O_CLK_SCIENCE_01;
  output O_SCIENCE_CTRL_01;
  output [1:0]O_DEMUX_C0;
  output [1:0]O_DEMUX_C1;
  output O_CLK_SCIENCE_23;
  output O_SCIENCE_CTRL_23;
  output [1:0]O_DEMUX_C2;
  output [1:0]O_DEMUX_C3;
  output O_finished;
  input s_axi_aclk /* synthesis syn_isclock = 1 */;
  input s_axi_aresetn;
  input [7:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [7:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axis_aclk;
  input s_axis_aresetn;
  inout s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input s_axis_tlast;
  input s_axis_tvalid;
  input m_axis_aclk /* synthesis syn_isclock = 1 */;
  input m_axis_aresetn;
  output m_axis_tvalid;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output m_axis_tlast;
  input m_axis_tready;
endmodule
