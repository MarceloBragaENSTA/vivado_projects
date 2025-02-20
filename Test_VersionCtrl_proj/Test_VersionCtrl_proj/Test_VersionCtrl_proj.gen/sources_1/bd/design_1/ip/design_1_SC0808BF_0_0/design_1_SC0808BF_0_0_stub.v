// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Tue Feb 18 09:07:44 2025
// Host        : dedippcaa90.extra.cea.fr running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_SC0808BF_0_0 -prefix
//               design_1_SC0808BF_0_0_ design_1_SC0808BF_0_0_stub.v
// Design      : design_1_SC0808BF_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu4eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "SC0808BF,Vivado 2023.2" *)
module design_1_SC0808BF_0_0(PS_AUX_DI, PS_AUX_DO, PS_AUX_OE, PS_DP_HPD, SC0, 
  SC5, SC6, SC7, SC10_I, SC10_O, SC10_T, SC11, SC12, SC13, SC15, SC14, SC16, SC17, SC18, SC19, CAN_RX, CAN_TX, CAN_S, 
  LED_HD, LED_XMOD2, RGPIO_M_CLK, RGPIO_M_RX, RGPIO_M_TX, RGPIO_S_CLK, RGPIO_S_RX, RGPIO_S_TX)
/* synthesis syn_black_box black_box_pad_pin="PS_AUX_DI,PS_AUX_DO,PS_AUX_OE,PS_DP_HPD,SC0,SC5,SC6,SC7,SC10_I,SC10_O,SC10_T,SC11,SC12,SC13,SC15,SC14,SC16,SC17,SC18,SC19,CAN_RX,CAN_TX,CAN_S,LED_HD,LED_XMOD2,RGPIO_M_CLK,RGPIO_M_RX,RGPIO_M_TX,RGPIO_S_CLK,RGPIO_S_RX,RGPIO_S_TX" */;
  output PS_AUX_DI;
  input PS_AUX_DO;
  input PS_AUX_OE;
  output PS_DP_HPD;
  output SC0;
  input SC5;
  output SC6;
  output SC7;
  input SC10_I;
  output SC10_O;
  output SC10_T;
  output SC11;
  input SC12;
  input SC13;
  output SC15;
  output SC14;
  output SC16;
  output SC17;
  output SC18;
  input SC19;
  output CAN_RX;
  input CAN_TX;
  input CAN_S;
  input LED_HD;
  input LED_XMOD2;
  input RGPIO_M_CLK;
  output RGPIO_M_RX;
  input RGPIO_M_TX;
  input RGPIO_S_CLK;
  output RGPIO_S_RX;
  input RGPIO_S_TX;
endmodule
