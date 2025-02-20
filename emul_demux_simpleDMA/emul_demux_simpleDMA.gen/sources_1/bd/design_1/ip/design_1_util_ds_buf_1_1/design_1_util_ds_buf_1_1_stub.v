// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue Feb 18 13:27:22 2025
// Host        : dedippcaa90.extra.cea.fr running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_util_ds_buf_1_1 -prefix
//               design_1_util_ds_buf_1_1_ design_1_util_ds_buf_1_1_stub.v
// Design      : design_1_util_ds_buf_1_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu4eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "util_ds_buf,Vivado 2023.2" *)
module design_1_util_ds_buf_1_1(OBUF_IN, OBUF_DS_P, OBUF_DS_N)
/* synthesis syn_black_box black_box_pad_pin="OBUF_IN[1:0],OBUF_DS_P[1:0],OBUF_DS_N[1:0]" */;
  input [1:0]OBUF_IN;
  output [1:0]OBUF_DS_P;
  output [1:0]OBUF_DS_N;
endmodule
