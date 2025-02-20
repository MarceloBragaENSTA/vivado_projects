--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
--Date        : Thu Feb 20 14:24:46 2025
--Host        : dedippcaa90.extra.cea.fr running 64-bit Ubuntu 22.04.5 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lvds_buffers_imp_1W870SU is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_IN1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_IN2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    OBUF_IN3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    OBUF_IN4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_IN5 : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_IN6 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    OBUF_IN7 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    O_CLK_SCIENCE_01_clk_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    O_CLK_SCIENCE_01_clk_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    O_CLK_SCIENCE_23_clk_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    O_CLK_SCIENCE_23_clk_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    O_DEMUX_C0_clk_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_DEMUX_C0_clk_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_DEMUX_C1_clk_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_DEMUX_C1_clk_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_DEMUX_C2_clk_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_DEMUX_C2_clk_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_DEMUX_C3_clk_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_DEMUX_C3_clk_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_SCIENCE_CTRL_01_clk_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    O_SCIENCE_CTRL_01_clk_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    O_SCIENCE_CTRL_23_clk_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    O_SCIENCE_CTRL_23_clk_p : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end lvds_buffers_imp_1W870SU;

architecture STRUCTURE of lvds_buffers_imp_1W870SU is
  component design_1_util_ds_buf_0_1 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_util_ds_buf_0_1;
  component design_1_util_ds_buf_1_3 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_util_ds_buf_1_3;
  component design_1_util_ds_buf_1_1 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 1 downto 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_util_ds_buf_1_1;
  component design_1_util_ds_buf_1_2 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 1 downto 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_util_ds_buf_1_2;
  component design_1_util_ds_buf_4_0 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_util_ds_buf_4_0;
  component design_1_util_ds_buf_2_0 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 0 to 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_util_ds_buf_2_0;
  component design_1_util_ds_buf_2_1 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 1 downto 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_util_ds_buf_2_1;
  component design_1_util_ds_buf_7_0 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 1 downto 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 1 downto 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_util_ds_buf_7_0;
  signal emul_demux_SM_0_O_CLK_SCIENCE_01 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal emul_demux_SM_0_O_CLK_SCIENCE_23 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal emul_demux_SM_0_O_DEMUX_C0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal emul_demux_SM_0_O_DEMUX_C1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal emul_demux_SM_0_O_DEMUX_C2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal emul_demux_SM_0_O_DEMUX_C3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal emul_demux_SM_0_O_SCIENCE_CTRL_01 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal emul_demux_SM_0_O_SCIENCE_CTRL_23 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal lvds_buf_6_CLK_OUT_D3_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal lvds_buf_6_CLK_OUT_D3_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_1_CLK_OUT_D3_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_1_CLK_OUT_D3_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_2_CLK_OUT_D3_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_2_CLK_OUT_D3_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_3_CLK_OUT_D3_CLK_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal util_ds_buf_3_CLK_OUT_D3_CLK_P : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal util_ds_buf_4_CLK_OUT_D3_CLK_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal util_ds_buf_4_CLK_OUT_D3_CLK_P : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal util_ds_buf_5_CLK_OUT_D3_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_5_CLK_OUT_D3_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_7_CLK_OUT_D3_CLK_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal util_ds_buf_7_CLK_OUT_D3_CLK_P : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal util_ds_buf_8_CLK_OUT_D3_CLK_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal util_ds_buf_8_CLK_OUT_D3_CLK_P : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  O_CLK_SCIENCE_01_clk_n(0) <= util_ds_buf_2_CLK_OUT_D3_CLK_N(0);
  O_CLK_SCIENCE_01_clk_p(0) <= util_ds_buf_2_CLK_OUT_D3_CLK_P(0);
  O_CLK_SCIENCE_23_clk_n(0) <= util_ds_buf_5_CLK_OUT_D3_CLK_N(0);
  O_CLK_SCIENCE_23_clk_p(0) <= util_ds_buf_5_CLK_OUT_D3_CLK_P(0);
  O_DEMUX_C0_clk_n(1 downto 0) <= util_ds_buf_3_CLK_OUT_D3_CLK_N(1 downto 0);
  O_DEMUX_C0_clk_p(1 downto 0) <= util_ds_buf_3_CLK_OUT_D3_CLK_P(1 downto 0);
  O_DEMUX_C1_clk_n(1 downto 0) <= util_ds_buf_4_CLK_OUT_D3_CLK_N(1 downto 0);
  O_DEMUX_C1_clk_p(1 downto 0) <= util_ds_buf_4_CLK_OUT_D3_CLK_P(1 downto 0);
  O_DEMUX_C2_clk_n(1 downto 0) <= util_ds_buf_7_CLK_OUT_D3_CLK_N(1 downto 0);
  O_DEMUX_C2_clk_p(1 downto 0) <= util_ds_buf_7_CLK_OUT_D3_CLK_P(1 downto 0);
  O_DEMUX_C3_clk_n(1 downto 0) <= util_ds_buf_8_CLK_OUT_D3_CLK_N(1 downto 0);
  O_DEMUX_C3_clk_p(1 downto 0) <= util_ds_buf_8_CLK_OUT_D3_CLK_P(1 downto 0);
  O_SCIENCE_CTRL_01_clk_n(0) <= util_ds_buf_1_CLK_OUT_D3_CLK_N(0);
  O_SCIENCE_CTRL_01_clk_p(0) <= util_ds_buf_1_CLK_OUT_D3_CLK_P(0);
  O_SCIENCE_CTRL_23_clk_n(0) <= lvds_buf_6_CLK_OUT_D3_CLK_N(0);
  O_SCIENCE_CTRL_23_clk_p(0) <= lvds_buf_6_CLK_OUT_D3_CLK_P(0);
  emul_demux_SM_0_O_CLK_SCIENCE_01(0) <= OBUF_IN1(0);
  emul_demux_SM_0_O_CLK_SCIENCE_23(0) <= OBUF_IN4(0);
  emul_demux_SM_0_O_DEMUX_C0(1 downto 0) <= OBUF_IN2(1 downto 0);
  emul_demux_SM_0_O_DEMUX_C1(1 downto 0) <= OBUF_IN3(1 downto 0);
  emul_demux_SM_0_O_DEMUX_C2(1 downto 0) <= OBUF_IN6(1 downto 0);
  emul_demux_SM_0_O_DEMUX_C3(1 downto 0) <= OBUF_IN7(1 downto 0);
  emul_demux_SM_0_O_SCIENCE_CTRL_01(0) <= OBUF_IN(0);
  emul_demux_SM_0_O_SCIENCE_CTRL_23(0) <= OBUF_IN5(0);
lvds_buf_1: component design_1_util_ds_buf_0_1
     port map (
      OBUF_DS_N(0) => util_ds_buf_1_CLK_OUT_D3_CLK_N(0),
      OBUF_DS_P(0) => util_ds_buf_1_CLK_OUT_D3_CLK_P(0),
      OBUF_IN(0) => emul_demux_SM_0_O_SCIENCE_CTRL_01(0)
    );
lvds_buf_2: component design_1_util_ds_buf_1_3
     port map (
      OBUF_DS_N(0) => util_ds_buf_2_CLK_OUT_D3_CLK_N(0),
      OBUF_DS_P(0) => util_ds_buf_2_CLK_OUT_D3_CLK_P(0),
      OBUF_IN(0) => emul_demux_SM_0_O_CLK_SCIENCE_01(0)
    );
lvds_buf_3: component design_1_util_ds_buf_1_1
     port map (
      OBUF_DS_N(1 downto 0) => util_ds_buf_3_CLK_OUT_D3_CLK_N(1 downto 0),
      OBUF_DS_P(1 downto 0) => util_ds_buf_3_CLK_OUT_D3_CLK_P(1 downto 0),
      OBUF_IN(1 downto 0) => emul_demux_SM_0_O_DEMUX_C0(1 downto 0)
    );
lvds_buf_4: component design_1_util_ds_buf_1_2
     port map (
      OBUF_DS_N(1 downto 0) => util_ds_buf_4_CLK_OUT_D3_CLK_N(1 downto 0),
      OBUF_DS_P(1 downto 0) => util_ds_buf_4_CLK_OUT_D3_CLK_P(1 downto 0),
      OBUF_IN(1 downto 0) => emul_demux_SM_0_O_DEMUX_C1(1 downto 0)
    );
lvds_buf_5: component design_1_util_ds_buf_4_0
     port map (
      OBUF_DS_N(0) => util_ds_buf_5_CLK_OUT_D3_CLK_N(0),
      OBUF_DS_P(0) => util_ds_buf_5_CLK_OUT_D3_CLK_P(0),
      OBUF_IN(0) => emul_demux_SM_0_O_CLK_SCIENCE_23(0)
    );
lvds_buf_6: component design_1_util_ds_buf_2_0
     port map (
      OBUF_DS_N(0) => lvds_buf_6_CLK_OUT_D3_CLK_N(0),
      OBUF_DS_P(0) => lvds_buf_6_CLK_OUT_D3_CLK_P(0),
      OBUF_IN(0) => emul_demux_SM_0_O_SCIENCE_CTRL_23(0)
    );
lvds_buf_7: component design_1_util_ds_buf_2_1
     port map (
      OBUF_DS_N(1 downto 0) => util_ds_buf_7_CLK_OUT_D3_CLK_N(1 downto 0),
      OBUF_DS_P(1 downto 0) => util_ds_buf_7_CLK_OUT_D3_CLK_P(1 downto 0),
      OBUF_IN(1 downto 0) => emul_demux_SM_0_O_DEMUX_C2(1 downto 0)
    );
lvds_buf_8: component design_1_util_ds_buf_7_0
     port map (
      OBUF_DS_N(1 downto 0) => util_ds_buf_8_CLK_OUT_D3_CLK_N(1 downto 0),
      OBUF_DS_P(1 downto 0) => util_ds_buf_8_CLK_OUT_D3_CLK_P(1 downto 0),
      OBUF_IN(1 downto 0) => emul_demux_SM_0_O_DEMUX_C3(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_QJIMLI is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_QJIMLI;

architecture STRUCTURE of m00_couplers_imp_QJIMLI is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(39 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(39 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(39 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(39 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_1D3SAH3 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_1D3SAH3;

architecture STRUCTURE of m01_couplers_imp_1D3SAH3 is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= m01_couplers_to_m01_couplers_ARADDR(39 downto 0);
  M_AXI_arprot(2 downto 0) <= m01_couplers_to_m01_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= m01_couplers_to_m01_couplers_AWADDR(39 downto 0);
  M_AXI_awprot(2 downto 0) <= m01_couplers_to_m01_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= m01_couplers_to_m01_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m01_couplers_to_m01_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp(1 downto 0) <= m01_couplers_to_m01_couplers_BRESP(1 downto 0);
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata(31 downto 0) <= m01_couplers_to_m01_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m01_couplers_to_m01_couplers_RRESP(1 downto 0);
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  m01_couplers_to_m01_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  m01_couplers_to_m01_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1A7ZMW4 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_1A7ZMW4;

architecture STRUCTURE of s00_couplers_imp_1A7ZMW4 is
  component design_1_auto_ds_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_auto_ds_0;
  component design_1_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component design_1_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_ds_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_ARVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_ds_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal auto_ds_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_ds_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_ds_to_auto_pc_AWVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_BREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_BVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_RLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_RREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_ds_to_auto_pc_RVALID : STD_LOGIC;
  signal auto_ds_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_ds_to_auto_pc_WLAST : STD_LOGIC;
  signal auto_ds_to_auto_pc_WREADY : STD_LOGIC;
  signal auto_ds_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_ds_to_auto_pc_WVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_ds_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_ds_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_ds_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_ds_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_ds_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ds_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ds_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_auto_ds_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_ds_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_ds_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_couplers_to_auto_ds_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_auto_ds_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ds_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_ds_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_ds_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_ds_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_ds_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_auto_ds_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_ds_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_ds_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_ds_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_ds_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal s00_couplers_to_auto_ds_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_ds_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_ds_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s00_couplers_to_auto_ds_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(39 downto 0) <= auto_pc_to_s00_couplers_ARADDR(39 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(39 downto 0) <= auto_pc_to_s00_couplers_AWADDR(39 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_ds_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_ds_AWREADY;
  S_AXI_bid(15 downto 0) <= s00_couplers_to_auto_ds_BID(15 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_ds_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_ds_BVALID;
  S_AXI_rdata(127 downto 0) <= s00_couplers_to_auto_ds_RDATA(127 downto 0);
  S_AXI_rid(15 downto 0) <= s00_couplers_to_auto_ds_RID(15 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_ds_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_ds_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_ds_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_ds_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_ds_ARADDR(39 downto 0) <= S_AXI_araddr(39 downto 0);
  s00_couplers_to_auto_ds_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_ds_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_ds_ARID(15 downto 0) <= S_AXI_arid(15 downto 0);
  s00_couplers_to_auto_ds_ARLEN(7 downto 0) <= S_AXI_arlen(7 downto 0);
  s00_couplers_to_auto_ds_ARLOCK(0) <= S_AXI_arlock(0);
  s00_couplers_to_auto_ds_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_ds_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_ds_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_ds_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_ds_AWADDR(39 downto 0) <= S_AXI_awaddr(39 downto 0);
  s00_couplers_to_auto_ds_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_ds_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_ds_AWID(15 downto 0) <= S_AXI_awid(15 downto 0);
  s00_couplers_to_auto_ds_AWLEN(7 downto 0) <= S_AXI_awlen(7 downto 0);
  s00_couplers_to_auto_ds_AWLOCK(0) <= S_AXI_awlock(0);
  s00_couplers_to_auto_ds_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_ds_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_ds_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_ds_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_ds_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_ds_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_ds_WDATA(127 downto 0) <= S_AXI_wdata(127 downto 0);
  s00_couplers_to_auto_ds_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_ds_WSTRB(15 downto 0) <= S_AXI_wstrb(15 downto 0);
  s00_couplers_to_auto_ds_WVALID <= S_AXI_wvalid;
auto_ds: component design_1_auto_ds_0
     port map (
      m_axi_araddr(39 downto 0) => auto_ds_to_auto_pc_ARADDR(39 downto 0),
      m_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      m_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      m_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      m_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      m_axi_arready => auto_ds_to_auto_pc_ARREADY,
      m_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      m_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_ds_to_auto_pc_AWADDR(39 downto 0),
      m_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      m_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      m_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      m_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      m_axi_awready => auto_ds_to_auto_pc_AWREADY,
      m_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      m_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      m_axi_bready => auto_ds_to_auto_pc_BREADY,
      m_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      m_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      m_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      m_axi_rlast => auto_ds_to_auto_pc_RLAST,
      m_axi_rready => auto_ds_to_auto_pc_RREADY,
      m_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      m_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      m_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      m_axi_wlast => auto_ds_to_auto_pc_WLAST,
      m_axi_wready => auto_ds_to_auto_pc_WREADY,
      m_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      m_axi_wvalid => auto_ds_to_auto_pc_WVALID,
      s_axi_aclk => S_ACLK_1,
      s_axi_araddr(39 downto 0) => s00_couplers_to_auto_ds_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_ds_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_ds_ARCACHE(3 downto 0),
      s_axi_aresetn => S_ARESETN_1,
      s_axi_arid(15 downto 0) => s00_couplers_to_auto_ds_ARID(15 downto 0),
      s_axi_arlen(7 downto 0) => s00_couplers_to_auto_ds_ARLEN(7 downto 0),
      s_axi_arlock(0) => s00_couplers_to_auto_ds_ARLOCK(0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_ds_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_ds_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_ds_ARREADY,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_ds_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_ds_ARVALID,
      s_axi_awaddr(39 downto 0) => s00_couplers_to_auto_ds_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_ds_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_ds_AWCACHE(3 downto 0),
      s_axi_awid(15 downto 0) => s00_couplers_to_auto_ds_AWID(15 downto 0),
      s_axi_awlen(7 downto 0) => s00_couplers_to_auto_ds_AWLEN(7 downto 0),
      s_axi_awlock(0) => s00_couplers_to_auto_ds_AWLOCK(0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_ds_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_ds_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_ds_AWREADY,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_ds_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_ds_AWVALID,
      s_axi_bid(15 downto 0) => s00_couplers_to_auto_ds_BID(15 downto 0),
      s_axi_bready => s00_couplers_to_auto_ds_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_ds_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_ds_BVALID,
      s_axi_rdata(127 downto 0) => s00_couplers_to_auto_ds_RDATA(127 downto 0),
      s_axi_rid(15 downto 0) => s00_couplers_to_auto_ds_RID(15 downto 0),
      s_axi_rlast => s00_couplers_to_auto_ds_RLAST,
      s_axi_rready => s00_couplers_to_auto_ds_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_ds_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_ds_RVALID,
      s_axi_wdata(127 downto 0) => s00_couplers_to_auto_ds_WDATA(127 downto 0),
      s_axi_wlast => s00_couplers_to_auto_ds_WLAST,
      s_axi_wready => s00_couplers_to_auto_ds_WREADY,
      s_axi_wstrb(15 downto 0) => s00_couplers_to_auto_ds_WSTRB(15 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_ds_WVALID
    );
auto_pc: component design_1_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(39 downto 0) => auto_pc_to_s00_couplers_ARADDR(39 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(39 downto 0) => auto_pc_to_s00_couplers_AWADDR(39 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(39 downto 0) => auto_ds_to_auto_pc_ARADDR(39 downto 0),
      s_axi_arburst(1 downto 0) => auto_ds_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => auto_ds_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arlen(7 downto 0) => auto_ds_to_auto_pc_ARLEN(7 downto 0),
      s_axi_arlock(0) => auto_ds_to_auto_pc_ARLOCK(0),
      s_axi_arprot(2 downto 0) => auto_ds_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => auto_ds_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => auto_ds_to_auto_pc_ARREADY,
      s_axi_arregion(3 downto 0) => auto_ds_to_auto_pc_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => auto_ds_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => auto_ds_to_auto_pc_ARVALID,
      s_axi_awaddr(39 downto 0) => auto_ds_to_auto_pc_AWADDR(39 downto 0),
      s_axi_awburst(1 downto 0) => auto_ds_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => auto_ds_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => auto_ds_to_auto_pc_AWLEN(7 downto 0),
      s_axi_awlock(0) => auto_ds_to_auto_pc_AWLOCK(0),
      s_axi_awprot(2 downto 0) => auto_ds_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => auto_ds_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => auto_ds_to_auto_pc_AWREADY,
      s_axi_awregion(3 downto 0) => auto_ds_to_auto_pc_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => auto_ds_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => auto_ds_to_auto_pc_AWVALID,
      s_axi_bready => auto_ds_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => auto_ds_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => auto_ds_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => auto_ds_to_auto_pc_RDATA(31 downto 0),
      s_axi_rlast => auto_ds_to_auto_pc_RLAST,
      s_axi_rready => auto_ds_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => auto_ds_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => auto_ds_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => auto_ds_to_auto_pc_WDATA(31 downto 0),
      s_axi_wlast => auto_ds_to_auto_pc_WLAST,
      s_axi_wready => auto_ds_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => auto_ds_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => auto_ds_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ps8_0_axi_periph_5 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC;
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end design_1_ps8_0_axi_periph_5;

architecture STRUCTURE of design_1_ps8_0_axi_periph_5 is
  component design_1_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 79 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 79 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xbar_0;
  signal m00_couplers_to_ps8_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_ps8_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps8_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps8_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m00_couplers_to_ps8_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps8_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps8_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps8_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps8_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps8_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps8_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps8_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps8_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps8_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps8_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps8_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps8_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_ps8_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_ps8_0_axi_periph_ARREADY : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_ARVALID : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal m01_couplers_to_ps8_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m01_couplers_to_ps8_0_axi_periph_AWREADY : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_AWVALID : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_BREADY : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps8_0_axi_periph_BVALID : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps8_0_axi_periph_RREADY : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps8_0_axi_periph_RVALID : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps8_0_axi_periph_WREADY : STD_LOGIC;
  signal m01_couplers_to_ps8_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m01_couplers_to_ps8_0_axi_periph_WVALID : STD_LOGIC;
  signal ps8_0_axi_periph_ACLK_net : STD_LOGIC;
  signal ps8_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal ps8_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal ps8_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal ps8_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal ps8_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal ps8_0_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal ps8_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal ps8_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal ps8_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal ps8_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal ps8_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal ps8_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal ps8_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ps8_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 79 downto 40 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 79 downto 40 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_xbar_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_xbar_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_xbar_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  M00_AXI_araddr(39 downto 0) <= m00_couplers_to_ps8_0_axi_periph_ARADDR(39 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_ps8_0_axi_periph_ARVALID(0);
  M00_AXI_awaddr(39 downto 0) <= m00_couplers_to_ps8_0_axi_periph_AWADDR(39 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_ps8_0_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_ps8_0_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_ps8_0_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_ps8_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_ps8_0_axi_periph_WVALID(0);
  M01_AXI_araddr(39 downto 0) <= m01_couplers_to_ps8_0_axi_periph_ARADDR(39 downto 0);
  M01_AXI_arprot(2 downto 0) <= m01_couplers_to_ps8_0_axi_periph_ARPROT(2 downto 0);
  M01_AXI_arvalid <= m01_couplers_to_ps8_0_axi_periph_ARVALID;
  M01_AXI_awaddr(39 downto 0) <= m01_couplers_to_ps8_0_axi_periph_AWADDR(39 downto 0);
  M01_AXI_awprot(2 downto 0) <= m01_couplers_to_ps8_0_axi_periph_AWPROT(2 downto 0);
  M01_AXI_awvalid <= m01_couplers_to_ps8_0_axi_periph_AWVALID;
  M01_AXI_bready <= m01_couplers_to_ps8_0_axi_periph_BREADY;
  M01_AXI_rready <= m01_couplers_to_ps8_0_axi_periph_RREADY;
  M01_AXI_wdata(31 downto 0) <= m01_couplers_to_ps8_0_axi_periph_WDATA(31 downto 0);
  M01_AXI_wstrb(3 downto 0) <= m01_couplers_to_ps8_0_axi_periph_WSTRB(3 downto 0);
  M01_AXI_wvalid <= m01_couplers_to_ps8_0_axi_periph_WVALID;
  S00_AXI_arready <= ps8_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= ps8_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(15 downto 0) <= ps8_0_axi_periph_to_s00_couplers_BID(15 downto 0);
  S00_AXI_bresp(1 downto 0) <= ps8_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= ps8_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(127 downto 0) <= ps8_0_axi_periph_to_s00_couplers_RDATA(127 downto 0);
  S00_AXI_rid(15 downto 0) <= ps8_0_axi_periph_to_s00_couplers_RID(15 downto 0);
  S00_AXI_rlast <= ps8_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= ps8_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= ps8_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= ps8_0_axi_periph_to_s00_couplers_WREADY;
  m00_couplers_to_ps8_0_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_ps8_0_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_ps8_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_ps8_0_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_ps8_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_ps8_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_ps8_0_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_ps8_0_axi_periph_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_ps8_0_axi_periph_ARREADY <= M01_AXI_arready;
  m01_couplers_to_ps8_0_axi_periph_AWREADY <= M01_AXI_awready;
  m01_couplers_to_ps8_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_ps8_0_axi_periph_BVALID <= M01_AXI_bvalid;
  m01_couplers_to_ps8_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_ps8_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_ps8_0_axi_periph_RVALID <= M01_AXI_rvalid;
  m01_couplers_to_ps8_0_axi_periph_WREADY <= M01_AXI_wready;
  ps8_0_axi_periph_ACLK_net <= ACLK;
  ps8_0_axi_periph_ARESETN_net <= ARESETN;
  ps8_0_axi_periph_to_s00_couplers_ARADDR(39 downto 0) <= S00_AXI_araddr(39 downto 0);
  ps8_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  ps8_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  ps8_0_axi_periph_to_s00_couplers_ARID(15 downto 0) <= S00_AXI_arid(15 downto 0);
  ps8_0_axi_periph_to_s00_couplers_ARLEN(7 downto 0) <= S00_AXI_arlen(7 downto 0);
  ps8_0_axi_periph_to_s00_couplers_ARLOCK(0) <= S00_AXI_arlock(0);
  ps8_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  ps8_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  ps8_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  ps8_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  ps8_0_axi_periph_to_s00_couplers_AWADDR(39 downto 0) <= S00_AXI_awaddr(39 downto 0);
  ps8_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  ps8_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  ps8_0_axi_periph_to_s00_couplers_AWID(15 downto 0) <= S00_AXI_awid(15 downto 0);
  ps8_0_axi_periph_to_s00_couplers_AWLEN(7 downto 0) <= S00_AXI_awlen(7 downto 0);
  ps8_0_axi_periph_to_s00_couplers_AWLOCK(0) <= S00_AXI_awlock(0);
  ps8_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  ps8_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  ps8_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  ps8_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  ps8_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  ps8_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  ps8_0_axi_periph_to_s00_couplers_WDATA(127 downto 0) <= S00_AXI_wdata(127 downto 0);
  ps8_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  ps8_0_axi_periph_to_s00_couplers_WSTRB(15 downto 0) <= S00_AXI_wstrb(15 downto 0);
  ps8_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_QJIMLI
     port map (
      M_ACLK => ps8_0_axi_periph_ACLK_net,
      M_ARESETN => ps8_0_axi_periph_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m00_couplers_to_ps8_0_axi_periph_ARADDR(39 downto 0),
      M_AXI_arready(0) => m00_couplers_to_ps8_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_ps8_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(39 downto 0) => m00_couplers_to_ps8_0_axi_periph_AWADDR(39 downto 0),
      M_AXI_awready(0) => m00_couplers_to_ps8_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_ps8_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_ps8_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_ps8_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_ps8_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_ps8_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_ps8_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_ps8_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_ps8_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_ps8_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_ps8_0_axi_periph_WREADY(0),
      M_AXI_wvalid(0) => m00_couplers_to_ps8_0_axi_periph_WVALID(0),
      S_ACLK => ps8_0_axi_periph_ACLK_net,
      S_ARESETN => ps8_0_axi_periph_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m00_couplers_ARADDR(39 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(39 downto 0) => xbar_to_m00_couplers_AWADDR(39 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_1D3SAH3
     port map (
      M_ACLK => ps8_0_axi_periph_ACLK_net,
      M_ARESETN => ps8_0_axi_periph_ARESETN_net,
      M_AXI_araddr(39 downto 0) => m01_couplers_to_ps8_0_axi_periph_ARADDR(39 downto 0),
      M_AXI_arprot(2 downto 0) => m01_couplers_to_ps8_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready => m01_couplers_to_ps8_0_axi_periph_ARREADY,
      M_AXI_arvalid => m01_couplers_to_ps8_0_axi_periph_ARVALID,
      M_AXI_awaddr(39 downto 0) => m01_couplers_to_ps8_0_axi_periph_AWADDR(39 downto 0),
      M_AXI_awprot(2 downto 0) => m01_couplers_to_ps8_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready => m01_couplers_to_ps8_0_axi_periph_AWREADY,
      M_AXI_awvalid => m01_couplers_to_ps8_0_axi_periph_AWVALID,
      M_AXI_bready => m01_couplers_to_ps8_0_axi_periph_BREADY,
      M_AXI_bresp(1 downto 0) => m01_couplers_to_ps8_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid => m01_couplers_to_ps8_0_axi_periph_BVALID,
      M_AXI_rdata(31 downto 0) => m01_couplers_to_ps8_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready => m01_couplers_to_ps8_0_axi_periph_RREADY,
      M_AXI_rresp(1 downto 0) => m01_couplers_to_ps8_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid => m01_couplers_to_ps8_0_axi_periph_RVALID,
      M_AXI_wdata(31 downto 0) => m01_couplers_to_ps8_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready => m01_couplers_to_ps8_0_axi_periph_WREADY,
      M_AXI_wstrb(3 downto 0) => m01_couplers_to_ps8_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid => m01_couplers_to_ps8_0_axi_periph_WVALID,
      S_ACLK => ps8_0_axi_periph_ACLK_net,
      S_ARESETN => ps8_0_axi_periph_ARESETN_net,
      S_AXI_araddr(39 downto 0) => xbar_to_m01_couplers_ARADDR(79 downto 40),
      S_AXI_arprot(2 downto 0) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr(39 downto 0) => xbar_to_m01_couplers_AWADDR(79 downto 40),
      S_AXI_awprot(2 downto 0) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp(1 downto 0) => xbar_to_m01_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => xbar_to_m01_couplers_RDATA(31 downto 0),
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp(1 downto 0) => xbar_to_m01_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => xbar_to_m01_couplers_WDATA(63 downto 32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
s00_couplers: entity work.s00_couplers_imp_1A7ZMW4
     port map (
      M_ACLK => ps8_0_axi_periph_ACLK_net,
      M_ARESETN => ps8_0_axi_periph_ARESETN_net,
      M_AXI_araddr(39 downto 0) => s00_couplers_to_xbar_ARADDR(39 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(39 downto 0) => s00_couplers_to_xbar_AWADDR(39 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => ps8_0_axi_periph_ACLK_net,
      S_ARESETN => ps8_0_axi_periph_ARESETN_net,
      S_AXI_araddr(39 downto 0) => ps8_0_axi_periph_to_s00_couplers_ARADDR(39 downto 0),
      S_AXI_arburst(1 downto 0) => ps8_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps8_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(15 downto 0) => ps8_0_axi_periph_to_s00_couplers_ARID(15 downto 0),
      S_AXI_arlen(7 downto 0) => ps8_0_axi_periph_to_s00_couplers_ARLEN(7 downto 0),
      S_AXI_arlock(0) => ps8_0_axi_periph_to_s00_couplers_ARLOCK(0),
      S_AXI_arprot(2 downto 0) => ps8_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => ps8_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => ps8_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => ps8_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps8_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(39 downto 0) => ps8_0_axi_periph_to_s00_couplers_AWADDR(39 downto 0),
      S_AXI_awburst(1 downto 0) => ps8_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps8_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(15 downto 0) => ps8_0_axi_periph_to_s00_couplers_AWID(15 downto 0),
      S_AXI_awlen(7 downto 0) => ps8_0_axi_periph_to_s00_couplers_AWLEN(7 downto 0),
      S_AXI_awlock(0) => ps8_0_axi_periph_to_s00_couplers_AWLOCK(0),
      S_AXI_awprot(2 downto 0) => ps8_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => ps8_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => ps8_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => ps8_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps8_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(15 downto 0) => ps8_0_axi_periph_to_s00_couplers_BID(15 downto 0),
      S_AXI_bready => ps8_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => ps8_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => ps8_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(127 downto 0) => ps8_0_axi_periph_to_s00_couplers_RDATA(127 downto 0),
      S_AXI_rid(15 downto 0) => ps8_0_axi_periph_to_s00_couplers_RID(15 downto 0),
      S_AXI_rlast => ps8_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => ps8_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => ps8_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => ps8_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(127 downto 0) => ps8_0_axi_periph_to_s00_couplers_WDATA(127 downto 0),
      S_AXI_wlast => ps8_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => ps8_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(15 downto 0) => ps8_0_axi_periph_to_s00_couplers_WSTRB(15 downto 0),
      S_AXI_wvalid => ps8_0_axi_periph_to_s00_couplers_WVALID
    );
xbar: component design_1_xbar_0
     port map (
      aclk => ps8_0_axi_periph_ACLK_net,
      aresetn => ps8_0_axi_periph_ARESETN_net,
      m_axi_araddr(79 downto 40) => xbar_to_m01_couplers_ARADDR(79 downto 40),
      m_axi_araddr(39 downto 0) => xbar_to_m00_couplers_ARADDR(39 downto 0),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => NLW_xbar_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(79 downto 40) => xbar_to_m01_couplers_AWADDR(79 downto 40),
      m_axi_awaddr(39 downto 0) => xbar_to_m00_couplers_AWADDR(39 downto 0),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => NLW_xbar_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(3 downto 2) => xbar_to_m01_couplers_BRESP(1 downto 0),
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(63 downto 32) => xbar_to_m01_couplers_RDATA(31 downto 0),
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(3 downto 2) => xbar_to_m01_couplers_RRESP(1 downto 0),
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => NLW_xbar_m_axi_wstrb_UNCONNECTED(3 downto 0),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(39 downto 0) => s00_couplers_to_xbar_ARADDR(39 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(39 downto 0) => s00_couplers_to_xbar_AWADDR(39 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    BASE_0_sc0 : out STD_LOGIC;
    BASE_0_sc10_i : in STD_LOGIC;
    BASE_0_sc10_o : out STD_LOGIC;
    BASE_0_sc10_t : out STD_LOGIC;
    BASE_0_sc11 : out STD_LOGIC;
    BASE_0_sc12 : in STD_LOGIC;
    BASE_0_sc13 : in STD_LOGIC;
    BASE_0_sc14 : out STD_LOGIC;
    BASE_0_sc15 : out STD_LOGIC;
    BASE_0_sc16 : out STD_LOGIC;
    BASE_0_sc17 : out STD_LOGIC;
    BASE_0_sc18 : out STD_LOGIC;
    BASE_0_sc19 : in STD_LOGIC;
    BASE_0_sc5 : in STD_LOGIC;
    BASE_0_sc6 : out STD_LOGIC;
    BASE_0_sc7 : out STD_LOGIC;
    O_CLK_SCIENCE_01_clk_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    O_CLK_SCIENCE_01_clk_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    O_CLK_SCIENCE_23_clk_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    O_CLK_SCIENCE_23_clk_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    O_DEMUX_C0_clk_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_DEMUX_C0_clk_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_DEMUX_C1_clk_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_DEMUX_C1_clk_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_DEMUX_C2_clk_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_DEMUX_C2_clk_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_DEMUX_C3_clk_n : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_DEMUX_C3_clk_p : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_SCIENCE_CTRL_01_clk_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    O_SCIENCE_CTRL_01_clk_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    O_SCIENCE_CTRL_23_clk_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    O_SCIENCE_CTRL_23_clk_p : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=23,numReposBlks=18,numNonXlnxBlks=2,numHierBlks=5,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=9,da_board_cnt=8,da_zynq_ultra_ps_e_cnt=1,synth_mode=Hierarchical}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_zynq_ultra_ps_e_0_1 is
  port (
    maxihpm0_fpd_aclk : in STD_LOGIC;
    maxigp0_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp0_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_awlock : out STD_LOGIC;
    maxigp0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_awvalid : out STD_LOGIC;
    maxigp0_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_awready : in STD_LOGIC;
    maxigp0_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp0_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_wlast : out STD_LOGIC;
    maxigp0_wvalid : out STD_LOGIC;
    maxigp0_wready : in STD_LOGIC;
    maxigp0_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_bvalid : in STD_LOGIC;
    maxigp0_bready : out STD_LOGIC;
    maxigp0_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp0_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_arlock : out STD_LOGIC;
    maxigp0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp0_arvalid : out STD_LOGIC;
    maxigp0_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_arready : in STD_LOGIC;
    maxigp0_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp0_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    maxigp0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp0_rlast : in STD_LOGIC;
    maxigp0_rvalid : in STD_LOGIC;
    maxigp0_rready : out STD_LOGIC;
    maxigp0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    saxihp0_fpd_aclk : in STD_LOGIC;
    saxigp2_aruser : in STD_LOGIC;
    saxigp2_awuser : in STD_LOGIC;
    saxigp2_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_awaddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp2_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp2_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_awlock : in STD_LOGIC;
    saxigp2_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp2_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_awvalid : in STD_LOGIC;
    saxigp2_awready : out STD_LOGIC;
    saxigp2_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    saxigp2_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp2_wlast : in STD_LOGIC;
    saxigp2_wvalid : in STD_LOGIC;
    saxigp2_wready : out STD_LOGIC;
    saxigp2_bid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_bvalid : out STD_LOGIC;
    saxigp2_bready : in STD_LOGIC;
    saxigp2_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_araddr : in STD_LOGIC_VECTOR ( 48 downto 0 );
    saxigp2_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    saxigp2_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_arlock : in STD_LOGIC;
    saxigp2_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp2_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    saxigp2_arvalid : in STD_LOGIC;
    saxigp2_arready : out STD_LOGIC;
    saxigp2_rid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    saxigp2_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    saxigp2_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    saxigp2_rlast : out STD_LOGIC;
    saxigp2_rvalid : out STD_LOGIC;
    saxigp2_rready : in STD_LOGIC;
    saxigp2_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    saxigp2_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dp_audio_ref_clk : out STD_LOGIC;
    dp_s_axis_audio_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dp_s_axis_audio_tid : in STD_LOGIC;
    dp_s_axis_audio_tvalid : in STD_LOGIC;
    dp_s_axis_audio_tready : out STD_LOGIC;
    dp_m_axis_mixed_audio_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dp_m_axis_mixed_audio_tid : out STD_LOGIC;
    dp_m_axis_mixed_audio_tvalid : out STD_LOGIC;
    dp_m_axis_mixed_audio_tready : in STD_LOGIC;
    dp_s_axis_audio_clk : in STD_LOGIC;
    dp_aux_data_in : in STD_LOGIC;
    dp_aux_data_out : out STD_LOGIC;
    dp_aux_data_oe_n : out STD_LOGIC;
    dp_hot_plug_detect : in STD_LOGIC;
    pl_ps_irq0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pl_resetn0 : out STD_LOGIC;
    pl_clk0 : out STD_LOGIC;
    pl_clk1 : out STD_LOGIC
  );
  end component design_1_zynq_ultra_ps_e_0_1;
  component design_1_axi_dma_0_0 is
  port (
    s_axi_lite_aclk : in STD_LOGIC;
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axi_s2mm_aclk : in STD_LOGIC;
    axi_resetn : in STD_LOGIC;
    s_axi_lite_awvalid : in STD_LOGIC;
    s_axi_lite_awready : out STD_LOGIC;
    s_axi_lite_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_wvalid : in STD_LOGIC;
    s_axi_lite_wready : out STD_LOGIC;
    s_axi_lite_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_lite_bvalid : out STD_LOGIC;
    s_axi_lite_bready : in STD_LOGIC;
    s_axi_lite_arvalid : in STD_LOGIC;
    s_axi_lite_arready : out STD_LOGIC;
    s_axi_lite_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_lite_rvalid : out STD_LOGIC;
    s_axi_lite_rready : in STD_LOGIC;
    s_axi_lite_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_lite_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    mm2s_prmry_reset_out_n : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC;
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s2mm_prmry_reset_out_n : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC;
    s_axis_s2mm_tlast : in STD_LOGIC;
    mm2s_introut : out STD_LOGIC;
    s2mm_introut : out STD_LOGIC
  );
  end component design_1_axi_dma_0_0;
  component design_1_axi_smc_2 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    S02_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S02_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S02_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_awvalid : in STD_LOGIC;
    S02_AXI_awready : out STD_LOGIC;
    S02_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S02_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S02_AXI_wlast : in STD_LOGIC;
    S02_AXI_wvalid : in STD_LOGIC;
    S02_AXI_wready : out STD_LOGIC;
    S02_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S02_AXI_bvalid : out STD_LOGIC;
    S02_AXI_bready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 48 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 48 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component design_1_axi_smc_2;
  component design_1_rst_ps8_0_100M_2 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_rst_ps8_0_100M_2;
  component design_1_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_xlconcat_0_0;
  component design_1_SC0808BF_0_0 is
  port (
    PS_AUX_DI : out STD_LOGIC;
    PS_AUX_DO : in STD_LOGIC;
    PS_AUX_OE : in STD_LOGIC;
    PS_DP_HPD : out STD_LOGIC;
    SC0 : out STD_LOGIC;
    SC5 : in STD_LOGIC;
    SC6 : out STD_LOGIC;
    SC7 : out STD_LOGIC;
    SC10_I : in STD_LOGIC;
    SC10_O : out STD_LOGIC;
    SC10_T : out STD_LOGIC;
    SC11 : out STD_LOGIC;
    SC12 : in STD_LOGIC;
    SC13 : in STD_LOGIC;
    SC15 : out STD_LOGIC;
    SC14 : out STD_LOGIC;
    SC16 : out STD_LOGIC;
    SC17 : out STD_LOGIC;
    SC18 : out STD_LOGIC;
    SC19 : in STD_LOGIC;
    CAN_RX : out STD_LOGIC;
    CAN_TX : in STD_LOGIC;
    CAN_S : in STD_LOGIC;
    LED_HD : in STD_LOGIC;
    LED_XMOD2 : in STD_LOGIC;
    RGPIO_M_CLK : in STD_LOGIC;
    RGPIO_M_RX : out STD_LOGIC;
    RGPIO_M_TX : in STD_LOGIC;
    RGPIO_S_CLK : in STD_LOGIC;
    RGPIO_S_RX : out STD_LOGIC;
    RGPIO_S_TX : in STD_LOGIC
  );
  end component design_1_SC0808BF_0_0;
  component design_1_emul_demux_SM_0_1 is
  port (
    aresetn : in STD_LOGIC;
    clk_sys : in STD_LOGIC;
    O_CLK_SCIENCE_01 : out STD_LOGIC;
    O_SCIENCE_CTRL_01 : out STD_LOGIC;
    O_DEMUX_C0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_DEMUX_C1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_CLK_SCIENCE_23 : out STD_LOGIC;
    O_SCIENCE_CTRL_23 : out STD_LOGIC;
    O_DEMUX_C2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_DEMUX_C3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O_finished : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tready : inout STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_aclk : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  end component design_1_emul_demux_SM_0_1;
  signal SC0808BF_0_BASE_SC0 : STD_LOGIC;
  signal SC0808BF_0_BASE_SC10_I : STD_LOGIC;
  signal SC0808BF_0_BASE_SC10_O : STD_LOGIC;
  signal SC0808BF_0_BASE_SC10_T : STD_LOGIC;
  signal SC0808BF_0_BASE_SC11 : STD_LOGIC;
  signal SC0808BF_0_BASE_SC12 : STD_LOGIC;
  signal SC0808BF_0_BASE_SC13 : STD_LOGIC;
  signal SC0808BF_0_BASE_SC14 : STD_LOGIC;
  signal SC0808BF_0_BASE_SC15 : STD_LOGIC;
  signal SC0808BF_0_BASE_SC16 : STD_LOGIC;
  signal SC0808BF_0_BASE_SC17 : STD_LOGIC;
  signal SC0808BF_0_BASE_SC18 : STD_LOGIC;
  signal SC0808BF_0_BASE_SC19 : STD_LOGIC;
  signal SC0808BF_0_BASE_SC5 : STD_LOGIC;
  signal SC0808BF_0_BASE_SC6 : STD_LOGIC;
  signal SC0808BF_0_BASE_SC7 : STD_LOGIC;
  signal axi_dma_0_M_AXIS_MM2S_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXIS_MM2S_TLAST : STD_LOGIC;
  signal axi_dma_0_M_AXIS_MM2S_TREADY : STD_LOGIC;
  signal axi_dma_0_M_AXIS_MM2S_TVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_ARVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_RLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_MM2S_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_MM2S_RVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_AWVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_BVALID : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WLAST : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WREADY : STD_LOGIC;
  signal axi_dma_0_M_AXI_S2MM_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_dma_0_M_AXI_S2MM_WVALID : STD_LOGIC;
  signal axi_dma_0_mm2s_introut : STD_LOGIC;
  signal axi_dma_0_s2mm_introut : STD_LOGIC;
  signal axi_smc_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 48 downto 0 );
  signal axi_smc_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M00_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_smc_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 48 downto 0 );
  signal axi_smc_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M00_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_smc_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M00_AXI_RLAST : STD_LOGIC;
  signal axi_smc_M00_AXI_RREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_RVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M00_AXI_WLAST : STD_LOGIC;
  signal axi_smc_M00_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_WVALID : STD_LOGIC;
  signal emul_demux_SM_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal emul_demux_SM_0_M_AXIS_TLAST : STD_LOGIC;
  signal emul_demux_SM_0_M_AXIS_TREADY : STD_LOGIC;
  signal emul_demux_SM_0_M_AXIS_TVALID : STD_LOGIC;
  signal emul_demux_SM_0_O_CLK_SCIENCE_01 : STD_LOGIC;
  signal emul_demux_SM_0_O_CLK_SCIENCE_23 : STD_LOGIC;
  signal emul_demux_SM_0_O_DEMUX_C0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal emul_demux_SM_0_O_DEMUX_C1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal emul_demux_SM_0_O_DEMUX_C2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal emul_demux_SM_0_O_DEMUX_C3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal emul_demux_SM_0_O_SCIENCE_CTRL_01 : STD_LOGIC;
  signal emul_demux_SM_0_O_SCIENCE_CTRL_23 : STD_LOGIC;
  signal emul_demux_SM_0_O_finished : STD_LOGIC;
  signal lvds_buf_6_CLK_OUT_D3_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal lvds_buf_6_CLK_OUT_D3_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_ARREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_AWREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M00_AXI_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_BVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_RVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M00_AXI_WREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M00_AXI_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ps8_0_axi_periph_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_ARREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_ARVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_AWREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_AWVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_BREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_BVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_RREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_RVALID : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_WREADY : STD_LOGIC;
  signal ps8_0_axi_periph_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps8_0_axi_periph_M01_AXI_WVALID : STD_LOGIC;
  signal rst_ps8_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_1_CLK_OUT_D3_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_1_CLK_OUT_D3_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_2_CLK_OUT_D3_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_2_CLK_OUT_D3_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_3_CLK_OUT_D3_CLK_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal util_ds_buf_3_CLK_OUT_D3_CLK_P : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal util_ds_buf_4_CLK_OUT_D3_CLK_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal util_ds_buf_4_CLK_OUT_D3_CLK_P : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal util_ds_buf_5_CLK_OUT_D3_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_5_CLK_OUT_D3_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_ds_buf_7_CLK_OUT_D3_CLK_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal util_ds_buf_7_CLK_OUT_D3_CLK_P : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal util_ds_buf_8_CLK_OUT_D3_CLK_N : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal util_ds_buf_8_CLK_OUT_D3_CLK_P : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY : STD_LOGIC;
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID : STD_LOGIC;
  signal zynq_ultra_ps_e_0_dp_audio_ref_clk : STD_LOGIC;
  signal zynq_ultra_ps_e_0_pl_clk0 : STD_LOGIC;
  signal zynq_ultra_ps_e_0_pl_resetn0 : STD_LOGIC;
  signal NLW_SC0808BF_0_CAN_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_SC0808BF_0_PS_AUX_DI_UNCONNECTED : STD_LOGIC;
  signal NLW_SC0808BF_0_PS_DP_HPD_UNCONNECTED : STD_LOGIC;
  signal NLW_SC0808BF_0_RGPIO_M_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_SC0808BF_0_RGPIO_S_RX_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_mm2s_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dma_0_m_axis_mm2s_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_smc_S00_AXI_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_smc_S00_AXI_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_smc_S00_AXI_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_smc_S00_AXI_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_smc_S00_AXI_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_smc_S00_AXI_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_smc_S00_AXI_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axi_smc_S00_AXI_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axi_smc_S00_AXI_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_emul_demux_SM_0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rst_ps8_0_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps8_0_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps8_0_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps8_0_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_zynq_ultra_ps_e_0_dp_aux_data_oe_n_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_dp_aux_data_out_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_dp_m_axis_mixed_audio_tid_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_dp_m_axis_mixed_audio_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_dp_s_axis_audio_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_pl_clk1_UNCONNECTED : STD_LOGIC;
  signal NLW_zynq_ultra_ps_e_0_dp_m_axis_mixed_audio_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_maxigp0_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_saxigp2_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_zynq_ultra_ps_e_0_saxigp2_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of BASE_0_sc0 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE_0 SC0";
  attribute X_INTERFACE_INFO of BASE_0_sc10_i : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE_0 SC10_I";
  attribute X_INTERFACE_INFO of BASE_0_sc10_o : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE_0 SC10_O";
  attribute X_INTERFACE_INFO of BASE_0_sc10_t : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE_0 SC10_T";
  attribute X_INTERFACE_INFO of BASE_0_sc11 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE_0 SC11";
  attribute X_INTERFACE_INFO of BASE_0_sc12 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE_0 SC12";
  attribute X_INTERFACE_INFO of BASE_0_sc13 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE_0 SC13";
  attribute X_INTERFACE_INFO of BASE_0_sc14 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE_0 SC14";
  attribute X_INTERFACE_INFO of BASE_0_sc15 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE_0 SC15";
  attribute X_INTERFACE_INFO of BASE_0_sc16 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE_0 SC16";
  attribute X_INTERFACE_INFO of BASE_0_sc17 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE_0 SC17";
  attribute X_INTERFACE_INFO of BASE_0_sc18 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE_0 SC18";
  attribute X_INTERFACE_INFO of BASE_0_sc19 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE_0 SC19";
  attribute X_INTERFACE_INFO of BASE_0_sc5 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE_0 SC5";
  attribute X_INTERFACE_INFO of BASE_0_sc6 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE_0 SC6";
  attribute X_INTERFACE_INFO of BASE_0_sc7 : signal is "xilinx.com:user:SC0808BF_bus:1.0 BASE_0 SC7";
  attribute X_INTERFACE_INFO of O_CLK_SCIENCE_01_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 O_CLK_SCIENCE_01 CLK_N";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of O_CLK_SCIENCE_01_clk_n : signal is "XIL_INTERFACENAME O_CLK_SCIENCE_01, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of O_CLK_SCIENCE_01_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 O_CLK_SCIENCE_01 CLK_P";
  attribute X_INTERFACE_INFO of O_CLK_SCIENCE_23_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 O_CLK_SCIENCE_23 CLK_N";
  attribute X_INTERFACE_PARAMETER of O_CLK_SCIENCE_23_clk_n : signal is "XIL_INTERFACENAME O_CLK_SCIENCE_23, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of O_CLK_SCIENCE_23_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 O_CLK_SCIENCE_23 CLK_P";
  attribute X_INTERFACE_INFO of O_DEMUX_C0_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 O_DEMUX_C0 CLK_N";
  attribute X_INTERFACE_PARAMETER of O_DEMUX_C0_clk_n : signal is "XIL_INTERFACENAME O_DEMUX_C0, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of O_DEMUX_C0_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 O_DEMUX_C0 CLK_P";
  attribute X_INTERFACE_INFO of O_DEMUX_C1_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 O_DEMUX_C1 CLK_N";
  attribute X_INTERFACE_PARAMETER of O_DEMUX_C1_clk_n : signal is "XIL_INTERFACENAME O_DEMUX_C1, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of O_DEMUX_C1_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 O_DEMUX_C1 CLK_P";
  attribute X_INTERFACE_INFO of O_DEMUX_C2_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 O_DEMUX_C2 CLK_N";
  attribute X_INTERFACE_PARAMETER of O_DEMUX_C2_clk_n : signal is "XIL_INTERFACENAME O_DEMUX_C2, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of O_DEMUX_C2_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 O_DEMUX_C2 CLK_P";
  attribute X_INTERFACE_INFO of O_DEMUX_C3_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 O_DEMUX_C3 CLK_N";
  attribute X_INTERFACE_PARAMETER of O_DEMUX_C3_clk_n : signal is "XIL_INTERFACENAME O_DEMUX_C3, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of O_DEMUX_C3_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 O_DEMUX_C3 CLK_P";
  attribute X_INTERFACE_INFO of O_SCIENCE_CTRL_01_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 O_SCIENCE_CTRL_01 CLK_N";
  attribute X_INTERFACE_PARAMETER of O_SCIENCE_CTRL_01_clk_n : signal is "XIL_INTERFACENAME O_SCIENCE_CTRL_01, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of O_SCIENCE_CTRL_01_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 O_SCIENCE_CTRL_01 CLK_P";
  attribute X_INTERFACE_INFO of O_SCIENCE_CTRL_23_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 O_SCIENCE_CTRL_23 CLK_N";
  attribute X_INTERFACE_PARAMETER of O_SCIENCE_CTRL_23_clk_n : signal is "XIL_INTERFACENAME O_SCIENCE_CTRL_23, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of O_SCIENCE_CTRL_23_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 O_SCIENCE_CTRL_23 CLK_P";
begin
  BASE_0_sc0 <= SC0808BF_0_BASE_SC0;
  BASE_0_sc10_o <= SC0808BF_0_BASE_SC10_O;
  BASE_0_sc10_t <= SC0808BF_0_BASE_SC10_T;
  BASE_0_sc11 <= SC0808BF_0_BASE_SC11;
  BASE_0_sc14 <= SC0808BF_0_BASE_SC14;
  BASE_0_sc15 <= SC0808BF_0_BASE_SC15;
  BASE_0_sc16 <= SC0808BF_0_BASE_SC16;
  BASE_0_sc17 <= SC0808BF_0_BASE_SC17;
  BASE_0_sc18 <= SC0808BF_0_BASE_SC18;
  BASE_0_sc6 <= SC0808BF_0_BASE_SC6;
  BASE_0_sc7 <= SC0808BF_0_BASE_SC7;
  O_CLK_SCIENCE_01_clk_n(0) <= util_ds_buf_2_CLK_OUT_D3_CLK_N(0);
  O_CLK_SCIENCE_01_clk_p(0) <= util_ds_buf_2_CLK_OUT_D3_CLK_P(0);
  O_CLK_SCIENCE_23_clk_n(0) <= util_ds_buf_5_CLK_OUT_D3_CLK_N(0);
  O_CLK_SCIENCE_23_clk_p(0) <= util_ds_buf_5_CLK_OUT_D3_CLK_P(0);
  O_DEMUX_C0_clk_n(1 downto 0) <= util_ds_buf_3_CLK_OUT_D3_CLK_N(1 downto 0);
  O_DEMUX_C0_clk_p(1 downto 0) <= util_ds_buf_3_CLK_OUT_D3_CLK_P(1 downto 0);
  O_DEMUX_C1_clk_n(1 downto 0) <= util_ds_buf_4_CLK_OUT_D3_CLK_N(1 downto 0);
  O_DEMUX_C1_clk_p(1 downto 0) <= util_ds_buf_4_CLK_OUT_D3_CLK_P(1 downto 0);
  O_DEMUX_C2_clk_n(1 downto 0) <= util_ds_buf_7_CLK_OUT_D3_CLK_N(1 downto 0);
  O_DEMUX_C2_clk_p(1 downto 0) <= util_ds_buf_7_CLK_OUT_D3_CLK_P(1 downto 0);
  O_DEMUX_C3_clk_n(1 downto 0) <= util_ds_buf_8_CLK_OUT_D3_CLK_N(1 downto 0);
  O_DEMUX_C3_clk_p(1 downto 0) <= util_ds_buf_8_CLK_OUT_D3_CLK_P(1 downto 0);
  O_SCIENCE_CTRL_01_clk_n(0) <= util_ds_buf_1_CLK_OUT_D3_CLK_N(0);
  O_SCIENCE_CTRL_01_clk_p(0) <= util_ds_buf_1_CLK_OUT_D3_CLK_P(0);
  O_SCIENCE_CTRL_23_clk_n(0) <= lvds_buf_6_CLK_OUT_D3_CLK_N(0);
  O_SCIENCE_CTRL_23_clk_p(0) <= lvds_buf_6_CLK_OUT_D3_CLK_P(0);
  SC0808BF_0_BASE_SC10_I <= BASE_0_sc10_i;
  SC0808BF_0_BASE_SC12 <= BASE_0_sc12;
  SC0808BF_0_BASE_SC13 <= BASE_0_sc13;
  SC0808BF_0_BASE_SC19 <= BASE_0_sc19;
  SC0808BF_0_BASE_SC5 <= BASE_0_sc5;
SC0808BF_0: component design_1_SC0808BF_0_0
     port map (
      CAN_RX => NLW_SC0808BF_0_CAN_RX_UNCONNECTED,
      CAN_S => '0',
      CAN_TX => '0',
      LED_HD => '0',
      LED_XMOD2 => emul_demux_SM_0_O_finished,
      PS_AUX_DI => NLW_SC0808BF_0_PS_AUX_DI_UNCONNECTED,
      PS_AUX_DO => '1',
      PS_AUX_OE => '1',
      PS_DP_HPD => NLW_SC0808BF_0_PS_DP_HPD_UNCONNECTED,
      RGPIO_M_CLK => '0',
      RGPIO_M_RX => NLW_SC0808BF_0_RGPIO_M_RX_UNCONNECTED,
      RGPIO_M_TX => '0',
      RGPIO_S_CLK => '0',
      RGPIO_S_RX => NLW_SC0808BF_0_RGPIO_S_RX_UNCONNECTED,
      RGPIO_S_TX => '0',
      SC0 => SC0808BF_0_BASE_SC0,
      SC10_I => SC0808BF_0_BASE_SC10_I,
      SC10_O => SC0808BF_0_BASE_SC10_O,
      SC10_T => SC0808BF_0_BASE_SC10_T,
      SC11 => SC0808BF_0_BASE_SC11,
      SC12 => SC0808BF_0_BASE_SC12,
      SC13 => SC0808BF_0_BASE_SC13,
      SC14 => SC0808BF_0_BASE_SC14,
      SC15 => SC0808BF_0_BASE_SC15,
      SC16 => SC0808BF_0_BASE_SC16,
      SC17 => SC0808BF_0_BASE_SC17,
      SC18 => SC0808BF_0_BASE_SC18,
      SC19 => SC0808BF_0_BASE_SC19,
      SC5 => SC0808BF_0_BASE_SC5,
      SC6 => SC0808BF_0_BASE_SC6,
      SC7 => SC0808BF_0_BASE_SC7
    );
axi_dma_0: component design_1_axi_dma_0_0
     port map (
      axi_resetn => rst_ps8_0_100M_peripheral_aresetn(0),
      m_axi_mm2s_aclk => zynq_ultra_ps_e_0_pl_clk0,
      m_axi_mm2s_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      m_axi_mm2s_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      m_axi_mm2s_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      m_axi_mm2s_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      m_axi_mm2s_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      m_axi_mm2s_arready => axi_dma_0_M_AXI_MM2S_ARREADY,
      m_axi_mm2s_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      m_axi_mm2s_arvalid => axi_dma_0_M_AXI_MM2S_ARVALID,
      m_axi_mm2s_rdata(31 downto 0) => axi_dma_0_M_AXI_MM2S_RDATA(31 downto 0),
      m_axi_mm2s_rlast => axi_dma_0_M_AXI_MM2S_RLAST,
      m_axi_mm2s_rready => axi_dma_0_M_AXI_MM2S_RREADY,
      m_axi_mm2s_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_RRESP(1 downto 0),
      m_axi_mm2s_rvalid => axi_dma_0_M_AXI_MM2S_RVALID,
      m_axi_s2mm_aclk => zynq_ultra_ps_e_0_pl_clk0,
      m_axi_s2mm_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      m_axi_s2mm_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      m_axi_s2mm_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      m_axi_s2mm_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      m_axi_s2mm_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      m_axi_s2mm_awready => axi_dma_0_M_AXI_S2MM_AWREADY,
      m_axi_s2mm_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      m_axi_s2mm_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      m_axi_s2mm_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      m_axi_s2mm_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      m_axi_s2mm_bvalid => axi_dma_0_M_AXI_S2MM_BVALID,
      m_axi_s2mm_wdata(31 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(31 downto 0),
      m_axi_s2mm_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      m_axi_s2mm_wready => axi_dma_0_M_AXI_S2MM_WREADY,
      m_axi_s2mm_wstrb(3 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      m_axi_s2mm_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      m_axis_mm2s_tdata(31 downto 0) => axi_dma_0_M_AXIS_MM2S_TDATA(31 downto 0),
      m_axis_mm2s_tkeep(3 downto 0) => NLW_axi_dma_0_m_axis_mm2s_tkeep_UNCONNECTED(3 downto 0),
      m_axis_mm2s_tlast => axi_dma_0_M_AXIS_MM2S_TLAST,
      m_axis_mm2s_tready => axi_dma_0_M_AXIS_MM2S_TREADY,
      m_axis_mm2s_tvalid => axi_dma_0_M_AXIS_MM2S_TVALID,
      mm2s_introut => axi_dma_0_mm2s_introut,
      mm2s_prmry_reset_out_n => NLW_axi_dma_0_mm2s_prmry_reset_out_n_UNCONNECTED,
      s2mm_introut => axi_dma_0_s2mm_introut,
      s2mm_prmry_reset_out_n => NLW_axi_dma_0_s2mm_prmry_reset_out_n_UNCONNECTED,
      s_axi_lite_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_lite_araddr(9 downto 0) => ps8_0_axi_periph_M00_AXI_ARADDR(9 downto 0),
      s_axi_lite_arready => ps8_0_axi_periph_M00_AXI_ARREADY,
      s_axi_lite_arvalid => ps8_0_axi_periph_M00_AXI_ARVALID(0),
      s_axi_lite_awaddr(9 downto 0) => ps8_0_axi_periph_M00_AXI_AWADDR(9 downto 0),
      s_axi_lite_awready => ps8_0_axi_periph_M00_AXI_AWREADY,
      s_axi_lite_awvalid => ps8_0_axi_periph_M00_AXI_AWVALID(0),
      s_axi_lite_bready => ps8_0_axi_periph_M00_AXI_BREADY(0),
      s_axi_lite_bresp(1 downto 0) => ps8_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      s_axi_lite_bvalid => ps8_0_axi_periph_M00_AXI_BVALID,
      s_axi_lite_rdata(31 downto 0) => ps8_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      s_axi_lite_rready => ps8_0_axi_periph_M00_AXI_RREADY(0),
      s_axi_lite_rresp(1 downto 0) => ps8_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      s_axi_lite_rvalid => ps8_0_axi_periph_M00_AXI_RVALID,
      s_axi_lite_wdata(31 downto 0) => ps8_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      s_axi_lite_wready => ps8_0_axi_periph_M00_AXI_WREADY,
      s_axi_lite_wvalid => ps8_0_axi_periph_M00_AXI_WVALID(0),
      s_axis_s2mm_tdata(31 downto 0) => emul_demux_SM_0_M_AXIS_TDATA(31 downto 0),
      s_axis_s2mm_tkeep(3 downto 0) => B"1111",
      s_axis_s2mm_tlast => emul_demux_SM_0_M_AXIS_TLAST,
      s_axis_s2mm_tready => emul_demux_SM_0_M_AXIS_TREADY,
      s_axis_s2mm_tvalid => emul_demux_SM_0_M_AXIS_TVALID
    );
axi_smc: component design_1_axi_smc_2
     port map (
      M00_AXI_araddr(48 downto 0) => axi_smc_M00_AXI_ARADDR(48 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_smc_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_smc_M00_AXI_ARLOCK(0),
      M00_AXI_arprot(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_smc_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_smc_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid => axi_smc_M00_AXI_ARVALID,
      M00_AXI_awaddr(48 downto 0) => axi_smc_M00_AXI_AWADDR(48 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_smc_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_smc_M00_AXI_AWLOCK(0),
      M00_AXI_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_smc_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid => axi_smc_M00_AXI_AWVALID,
      M00_AXI_bready => axi_smc_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_smc_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_smc_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rlast => axi_smc_M00_AXI_RLAST,
      M00_AXI_rready => axi_smc_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_smc_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_smc_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => axi_smc_M00_AXI_WLAST,
      M00_AXI_wready => axi_smc_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_smc_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_smc_M00_AXI_WVALID,
      S00_AXI_araddr(31 downto 0) => B"00000000000000000000000000000000",
      S00_AXI_arburst(1 downto 0) => B"01",
      S00_AXI_arcache(3 downto 0) => B"0011",
      S00_AXI_arlen(7 downto 0) => B"00000000",
      S00_AXI_arlock(0) => '0',
      S00_AXI_arprot(2 downto 0) => B"000",
      S00_AXI_arqos(3 downto 0) => B"0000",
      S00_AXI_arready => NLW_axi_smc_S00_AXI_arready_UNCONNECTED,
      S00_AXI_arsize(2 downto 0) => B"010",
      S00_AXI_arvalid => '0',
      S00_AXI_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      S00_AXI_awburst(1 downto 0) => B"01",
      S00_AXI_awcache(3 downto 0) => B"0011",
      S00_AXI_awlen(7 downto 0) => B"00000000",
      S00_AXI_awlock(0) => '0',
      S00_AXI_awprot(2 downto 0) => B"000",
      S00_AXI_awqos(3 downto 0) => B"0000",
      S00_AXI_awready => NLW_axi_smc_S00_AXI_awready_UNCONNECTED,
      S00_AXI_awsize(2 downto 0) => B"010",
      S00_AXI_awvalid => '0',
      S00_AXI_bready => '0',
      S00_AXI_bresp(1 downto 0) => NLW_axi_smc_S00_AXI_bresp_UNCONNECTED(1 downto 0),
      S00_AXI_bvalid => NLW_axi_smc_S00_AXI_bvalid_UNCONNECTED,
      S00_AXI_rdata(31 downto 0) => NLW_axi_smc_S00_AXI_rdata_UNCONNECTED(31 downto 0),
      S00_AXI_rlast => NLW_axi_smc_S00_AXI_rlast_UNCONNECTED,
      S00_AXI_rready => '0',
      S00_AXI_rresp(1 downto 0) => NLW_axi_smc_S00_AXI_rresp_UNCONNECTED(1 downto 0),
      S00_AXI_rvalid => NLW_axi_smc_S00_AXI_rvalid_UNCONNECTED,
      S00_AXI_wdata(31 downto 0) => B"00000000000000000000000000000000",
      S00_AXI_wlast => '0',
      S00_AXI_wready => NLW_axi_smc_S00_AXI_wready_UNCONNECTED,
      S00_AXI_wstrb(3 downto 0) => B"1111",
      S00_AXI_wvalid => '0',
      S01_AXI_araddr(31 downto 0) => axi_dma_0_M_AXI_MM2S_ARADDR(31 downto 0),
      S01_AXI_arburst(1 downto 0) => axi_dma_0_M_AXI_MM2S_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => axi_dma_0_M_AXI_MM2S_ARCACHE(3 downto 0),
      S01_AXI_arlen(7 downto 0) => axi_dma_0_M_AXI_MM2S_ARLEN(7 downto 0),
      S01_AXI_arlock(0) => '0',
      S01_AXI_arprot(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => B"0000",
      S01_AXI_arready => axi_dma_0_M_AXI_MM2S_ARREADY,
      S01_AXI_arsize(2 downto 0) => axi_dma_0_M_AXI_MM2S_ARSIZE(2 downto 0),
      S01_AXI_arvalid => axi_dma_0_M_AXI_MM2S_ARVALID,
      S01_AXI_rdata(31 downto 0) => axi_dma_0_M_AXI_MM2S_RDATA(31 downto 0),
      S01_AXI_rlast => axi_dma_0_M_AXI_MM2S_RLAST,
      S01_AXI_rready => axi_dma_0_M_AXI_MM2S_RREADY,
      S01_AXI_rresp(1 downto 0) => axi_dma_0_M_AXI_MM2S_RRESP(1 downto 0),
      S01_AXI_rvalid => axi_dma_0_M_AXI_MM2S_RVALID,
      S02_AXI_awaddr(31 downto 0) => axi_dma_0_M_AXI_S2MM_AWADDR(31 downto 0),
      S02_AXI_awburst(1 downto 0) => axi_dma_0_M_AXI_S2MM_AWBURST(1 downto 0),
      S02_AXI_awcache(3 downto 0) => axi_dma_0_M_AXI_S2MM_AWCACHE(3 downto 0),
      S02_AXI_awlen(7 downto 0) => axi_dma_0_M_AXI_S2MM_AWLEN(7 downto 0),
      S02_AXI_awlock(0) => '0',
      S02_AXI_awprot(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWPROT(2 downto 0),
      S02_AXI_awqos(3 downto 0) => B"0000",
      S02_AXI_awready => axi_dma_0_M_AXI_S2MM_AWREADY,
      S02_AXI_awsize(2 downto 0) => axi_dma_0_M_AXI_S2MM_AWSIZE(2 downto 0),
      S02_AXI_awvalid => axi_dma_0_M_AXI_S2MM_AWVALID,
      S02_AXI_bready => axi_dma_0_M_AXI_S2MM_BREADY,
      S02_AXI_bresp(1 downto 0) => axi_dma_0_M_AXI_S2MM_BRESP(1 downto 0),
      S02_AXI_bvalid => axi_dma_0_M_AXI_S2MM_BVALID,
      S02_AXI_wdata(31 downto 0) => axi_dma_0_M_AXI_S2MM_WDATA(31 downto 0),
      S02_AXI_wlast => axi_dma_0_M_AXI_S2MM_WLAST,
      S02_AXI_wready => axi_dma_0_M_AXI_S2MM_WREADY,
      S02_AXI_wstrb(3 downto 0) => axi_dma_0_M_AXI_S2MM_WSTRB(3 downto 0),
      S02_AXI_wvalid => axi_dma_0_M_AXI_S2MM_WVALID,
      aclk => zynq_ultra_ps_e_0_pl_clk0,
      aresetn => rst_ps8_0_100M_peripheral_aresetn(0)
    );
emul_demux_SM_0: component design_1_emul_demux_SM_0_1
     port map (
      O_CLK_SCIENCE_01 => emul_demux_SM_0_O_CLK_SCIENCE_01,
      O_CLK_SCIENCE_23 => emul_demux_SM_0_O_CLK_SCIENCE_23,
      O_DEMUX_C0(1 downto 0) => emul_demux_SM_0_O_DEMUX_C0(1 downto 0),
      O_DEMUX_C1(1 downto 0) => emul_demux_SM_0_O_DEMUX_C1(1 downto 0),
      O_DEMUX_C2(1 downto 0) => emul_demux_SM_0_O_DEMUX_C2(1 downto 0),
      O_DEMUX_C3(1 downto 0) => emul_demux_SM_0_O_DEMUX_C3(1 downto 0),
      O_SCIENCE_CTRL_01 => emul_demux_SM_0_O_SCIENCE_CTRL_01,
      O_SCIENCE_CTRL_23 => emul_demux_SM_0_O_SCIENCE_CTRL_23,
      O_finished => emul_demux_SM_0_O_finished,
      aresetn => rst_ps8_0_100M_peripheral_aresetn(0),
      clk_sys => zynq_ultra_ps_e_0_pl_clk0,
      m_axis_aclk => zynq_ultra_ps_e_0_pl_clk0,
      m_axis_aresetn => rst_ps8_0_100M_peripheral_aresetn(0),
      m_axis_tdata(31 downto 0) => emul_demux_SM_0_M_AXIS_TDATA(31 downto 0),
      m_axis_tlast => emul_demux_SM_0_M_AXIS_TLAST,
      m_axis_tready => emul_demux_SM_0_M_AXIS_TREADY,
      m_axis_tstrb(3 downto 0) => NLW_emul_demux_SM_0_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tvalid => emul_demux_SM_0_M_AXIS_TVALID,
      s_axi_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axi_araddr(7 downto 0) => ps8_0_axi_periph_M01_AXI_ARADDR(7 downto 0),
      s_axi_aresetn => rst_ps8_0_100M_peripheral_aresetn(0),
      s_axi_arprot(2 downto 0) => ps8_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      s_axi_arready => ps8_0_axi_periph_M01_AXI_ARREADY,
      s_axi_arvalid => ps8_0_axi_periph_M01_AXI_ARVALID,
      s_axi_awaddr(7 downto 0) => ps8_0_axi_periph_M01_AXI_AWADDR(7 downto 0),
      s_axi_awprot(2 downto 0) => ps8_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      s_axi_awready => ps8_0_axi_periph_M01_AXI_AWREADY,
      s_axi_awvalid => ps8_0_axi_periph_M01_AXI_AWVALID,
      s_axi_bready => ps8_0_axi_periph_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => ps8_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => ps8_0_axi_periph_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => ps8_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => ps8_0_axi_periph_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => ps8_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => ps8_0_axi_periph_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => ps8_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => ps8_0_axi_periph_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => ps8_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => ps8_0_axi_periph_M01_AXI_WVALID,
      s_axis_aclk => zynq_ultra_ps_e_0_pl_clk0,
      s_axis_aresetn => rst_ps8_0_100M_peripheral_aresetn(0),
      s_axis_tdata(31 downto 0) => axi_dma_0_M_AXIS_MM2S_TDATA(31 downto 0),
      s_axis_tlast => axi_dma_0_M_AXIS_MM2S_TLAST,
      s_axis_tready => axi_dma_0_M_AXIS_MM2S_TREADY,
      s_axis_tstrb(3 downto 0) => B"1111",
      s_axis_tvalid => axi_dma_0_M_AXIS_MM2S_TVALID
    );
lvds_buffers: entity work.lvds_buffers_imp_1W870SU
     port map (
      OBUF_IN(0) => emul_demux_SM_0_O_SCIENCE_CTRL_01,
      OBUF_IN1(0) => emul_demux_SM_0_O_CLK_SCIENCE_01,
      OBUF_IN2(1 downto 0) => emul_demux_SM_0_O_DEMUX_C0(1 downto 0),
      OBUF_IN3(1 downto 0) => emul_demux_SM_0_O_DEMUX_C1(1 downto 0),
      OBUF_IN4(0) => emul_demux_SM_0_O_CLK_SCIENCE_23,
      OBUF_IN5(0) => emul_demux_SM_0_O_SCIENCE_CTRL_23,
      OBUF_IN6(1 downto 0) => emul_demux_SM_0_O_DEMUX_C2(1 downto 0),
      OBUF_IN7(1 downto 0) => emul_demux_SM_0_O_DEMUX_C3(1 downto 0),
      O_CLK_SCIENCE_01_clk_n(0) => util_ds_buf_2_CLK_OUT_D3_CLK_N(0),
      O_CLK_SCIENCE_01_clk_p(0) => util_ds_buf_2_CLK_OUT_D3_CLK_P(0),
      O_CLK_SCIENCE_23_clk_n(0) => util_ds_buf_5_CLK_OUT_D3_CLK_N(0),
      O_CLK_SCIENCE_23_clk_p(0) => util_ds_buf_5_CLK_OUT_D3_CLK_P(0),
      O_DEMUX_C0_clk_n(1 downto 0) => util_ds_buf_3_CLK_OUT_D3_CLK_N(1 downto 0),
      O_DEMUX_C0_clk_p(1 downto 0) => util_ds_buf_3_CLK_OUT_D3_CLK_P(1 downto 0),
      O_DEMUX_C1_clk_n(1 downto 0) => util_ds_buf_4_CLK_OUT_D3_CLK_N(1 downto 0),
      O_DEMUX_C1_clk_p(1 downto 0) => util_ds_buf_4_CLK_OUT_D3_CLK_P(1 downto 0),
      O_DEMUX_C2_clk_n(1 downto 0) => util_ds_buf_7_CLK_OUT_D3_CLK_N(1 downto 0),
      O_DEMUX_C2_clk_p(1 downto 0) => util_ds_buf_7_CLK_OUT_D3_CLK_P(1 downto 0),
      O_DEMUX_C3_clk_n(1 downto 0) => util_ds_buf_8_CLK_OUT_D3_CLK_N(1 downto 0),
      O_DEMUX_C3_clk_p(1 downto 0) => util_ds_buf_8_CLK_OUT_D3_CLK_P(1 downto 0),
      O_SCIENCE_CTRL_01_clk_n(0) => util_ds_buf_1_CLK_OUT_D3_CLK_N(0),
      O_SCIENCE_CTRL_01_clk_p(0) => util_ds_buf_1_CLK_OUT_D3_CLK_P(0),
      O_SCIENCE_CTRL_23_clk_n(0) => lvds_buf_6_CLK_OUT_D3_CLK_N(0),
      O_SCIENCE_CTRL_23_clk_p(0) => lvds_buf_6_CLK_OUT_D3_CLK_P(0)
    );
ps8_0_axi_periph: entity work.design_1_ps8_0_axi_periph_5
     port map (
      ACLK => zynq_ultra_ps_e_0_pl_clk0,
      ARESETN => rst_ps8_0_100M_peripheral_aresetn(0),
      M00_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      M00_ARESETN => rst_ps8_0_100M_peripheral_aresetn(0),
      M00_AXI_araddr(39 downto 0) => ps8_0_axi_periph_M00_AXI_ARADDR(39 downto 0),
      M00_AXI_arready(0) => ps8_0_axi_periph_M00_AXI_ARREADY,
      M00_AXI_arvalid(0) => ps8_0_axi_periph_M00_AXI_ARVALID(0),
      M00_AXI_awaddr(39 downto 0) => ps8_0_axi_periph_M00_AXI_AWADDR(39 downto 0),
      M00_AXI_awready(0) => ps8_0_axi_periph_M00_AXI_AWREADY,
      M00_AXI_awvalid(0) => ps8_0_axi_periph_M00_AXI_AWVALID(0),
      M00_AXI_bready(0) => ps8_0_axi_periph_M00_AXI_BREADY(0),
      M00_AXI_bresp(1 downto 0) => ps8_0_axi_periph_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => ps8_0_axi_periph_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => ps8_0_axi_periph_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready(0) => ps8_0_axi_periph_M00_AXI_RREADY(0),
      M00_AXI_rresp(1 downto 0) => ps8_0_axi_periph_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => ps8_0_axi_periph_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => ps8_0_axi_periph_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready(0) => ps8_0_axi_periph_M00_AXI_WREADY,
      M00_AXI_wvalid(0) => ps8_0_axi_periph_M00_AXI_WVALID(0),
      M01_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      M01_ARESETN => rst_ps8_0_100M_peripheral_aresetn(0),
      M01_AXI_araddr(39 downto 0) => ps8_0_axi_periph_M01_AXI_ARADDR(39 downto 0),
      M01_AXI_arprot(2 downto 0) => ps8_0_axi_periph_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arready => ps8_0_axi_periph_M01_AXI_ARREADY,
      M01_AXI_arvalid => ps8_0_axi_periph_M01_AXI_ARVALID,
      M01_AXI_awaddr(39 downto 0) => ps8_0_axi_periph_M01_AXI_AWADDR(39 downto 0),
      M01_AXI_awprot(2 downto 0) => ps8_0_axi_periph_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awready => ps8_0_axi_periph_M01_AXI_AWREADY,
      M01_AXI_awvalid => ps8_0_axi_periph_M01_AXI_AWVALID,
      M01_AXI_bready => ps8_0_axi_periph_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => ps8_0_axi_periph_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => ps8_0_axi_periph_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => ps8_0_axi_periph_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => ps8_0_axi_periph_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => ps8_0_axi_periph_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => ps8_0_axi_periph_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => ps8_0_axi_periph_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => ps8_0_axi_periph_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => ps8_0_axi_periph_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => ps8_0_axi_periph_M01_AXI_WVALID,
      S00_ACLK => zynq_ultra_ps_e_0_pl_clk0,
      S00_ARESETN => rst_ps8_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR(39 downto 0),
      S00_AXI_arburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE(3 downto 0),
      S00_AXI_arid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID(15 downto 0),
      S00_AXI_arlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK,
      S00_AXI_arprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS(3 downto 0),
      S00_AXI_arready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY,
      S00_AXI_arsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE(2 downto 0),
      S00_AXI_arvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID,
      S00_AXI_awaddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR(39 downto 0),
      S00_AXI_awburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE(3 downto 0),
      S00_AXI_awid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID(15 downto 0),
      S00_AXI_awlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK,
      S00_AXI_awprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS(3 downto 0),
      S00_AXI_awready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY,
      S00_AXI_awsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE(2 downto 0),
      S00_AXI_awvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID,
      S00_AXI_bid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID(15 downto 0),
      S00_AXI_bready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY,
      S00_AXI_bresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP(1 downto 0),
      S00_AXI_bvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID,
      S00_AXI_rdata(127 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA(127 downto 0),
      S00_AXI_rid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID(15 downto 0),
      S00_AXI_rlast => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST,
      S00_AXI_rready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY,
      S00_AXI_rresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP(1 downto 0),
      S00_AXI_rvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID,
      S00_AXI_wdata(127 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA(127 downto 0),
      S00_AXI_wlast => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST,
      S00_AXI_wready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY,
      S00_AXI_wstrb(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB(15 downto 0),
      S00_AXI_wvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID
    );
rst_ps8_0_100M: component design_1_rst_ps8_0_100M_2
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps8_0_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => zynq_ultra_ps_e_0_pl_resetn0,
      interconnect_aresetn(0) => NLW_rst_ps8_0_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps8_0_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps8_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps8_0_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => zynq_ultra_ps_e_0_pl_clk0
    );
xlconcat_0: component design_1_xlconcat_0_0
     port map (
      In0(0) => axi_dma_0_mm2s_introut,
      In1(0) => axi_dma_0_s2mm_introut,
      dout(1 downto 0) => xlconcat_0_dout(1 downto 0)
    );
zynq_ultra_ps_e_0: component design_1_zynq_ultra_ps_e_0_1
     port map (
      dp_audio_ref_clk => zynq_ultra_ps_e_0_dp_audio_ref_clk,
      dp_aux_data_in => '0',
      dp_aux_data_oe_n => NLW_zynq_ultra_ps_e_0_dp_aux_data_oe_n_UNCONNECTED,
      dp_aux_data_out => NLW_zynq_ultra_ps_e_0_dp_aux_data_out_UNCONNECTED,
      dp_hot_plug_detect => '0',
      dp_m_axis_mixed_audio_tdata(31 downto 0) => NLW_zynq_ultra_ps_e_0_dp_m_axis_mixed_audio_tdata_UNCONNECTED(31 downto 0),
      dp_m_axis_mixed_audio_tid => NLW_zynq_ultra_ps_e_0_dp_m_axis_mixed_audio_tid_UNCONNECTED,
      dp_m_axis_mixed_audio_tready => '1',
      dp_m_axis_mixed_audio_tvalid => NLW_zynq_ultra_ps_e_0_dp_m_axis_mixed_audio_tvalid_UNCONNECTED,
      dp_s_axis_audio_clk => zynq_ultra_ps_e_0_dp_audio_ref_clk,
      dp_s_axis_audio_tdata(31 downto 0) => B"00000000000000000000000000000000",
      dp_s_axis_audio_tid => '0',
      dp_s_axis_audio_tready => NLW_zynq_ultra_ps_e_0_dp_s_axis_audio_tready_UNCONNECTED,
      dp_s_axis_audio_tvalid => '0',
      maxigp0_araddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR(39 downto 0),
      maxigp0_arburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST(1 downto 0),
      maxigp0_arcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE(3 downto 0),
      maxigp0_arid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID(15 downto 0),
      maxigp0_arlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN(7 downto 0),
      maxigp0_arlock => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK,
      maxigp0_arprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT(2 downto 0),
      maxigp0_arqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS(3 downto 0),
      maxigp0_arready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY,
      maxigp0_arsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE(2 downto 0),
      maxigp0_aruser(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_aruser_UNCONNECTED(15 downto 0),
      maxigp0_arvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID,
      maxigp0_awaddr(39 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR(39 downto 0),
      maxigp0_awburst(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST(1 downto 0),
      maxigp0_awcache(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE(3 downto 0),
      maxigp0_awid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID(15 downto 0),
      maxigp0_awlen(7 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN(7 downto 0),
      maxigp0_awlock => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK,
      maxigp0_awprot(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT(2 downto 0),
      maxigp0_awqos(3 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS(3 downto 0),
      maxigp0_awready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY,
      maxigp0_awsize(2 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE(2 downto 0),
      maxigp0_awuser(15 downto 0) => NLW_zynq_ultra_ps_e_0_maxigp0_awuser_UNCONNECTED(15 downto 0),
      maxigp0_awvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID,
      maxigp0_bid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID(15 downto 0),
      maxigp0_bready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY,
      maxigp0_bresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP(1 downto 0),
      maxigp0_bvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID,
      maxigp0_rdata(127 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA(127 downto 0),
      maxigp0_rid(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID(15 downto 0),
      maxigp0_rlast => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST,
      maxigp0_rready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY,
      maxigp0_rresp(1 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP(1 downto 0),
      maxigp0_rvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID,
      maxigp0_wdata(127 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA(127 downto 0),
      maxigp0_wlast => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST,
      maxigp0_wready => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY,
      maxigp0_wstrb(15 downto 0) => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB(15 downto 0),
      maxigp0_wvalid => zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID,
      maxihpm0_fpd_aclk => zynq_ultra_ps_e_0_pl_clk0,
      pl_clk0 => zynq_ultra_ps_e_0_pl_clk0,
      pl_clk1 => NLW_zynq_ultra_ps_e_0_pl_clk1_UNCONNECTED,
      pl_ps_irq0(1 downto 0) => xlconcat_0_dout(1 downto 0),
      pl_resetn0 => zynq_ultra_ps_e_0_pl_resetn0,
      saxigp2_araddr(48 downto 0) => axi_smc_M00_AXI_ARADDR(48 downto 0),
      saxigp2_arburst(1 downto 0) => axi_smc_M00_AXI_ARBURST(1 downto 0),
      saxigp2_arcache(3 downto 0) => axi_smc_M00_AXI_ARCACHE(3 downto 0),
      saxigp2_arid(5 downto 0) => B"000000",
      saxigp2_arlen(7 downto 0) => axi_smc_M00_AXI_ARLEN(7 downto 0),
      saxigp2_arlock => axi_smc_M00_AXI_ARLOCK(0),
      saxigp2_arprot(2 downto 0) => axi_smc_M00_AXI_ARPROT(2 downto 0),
      saxigp2_arqos(3 downto 0) => axi_smc_M00_AXI_ARQOS(3 downto 0),
      saxigp2_arready => axi_smc_M00_AXI_ARREADY,
      saxigp2_arsize(2 downto 0) => axi_smc_M00_AXI_ARSIZE(2 downto 0),
      saxigp2_aruser => '0',
      saxigp2_arvalid => axi_smc_M00_AXI_ARVALID,
      saxigp2_awaddr(48 downto 0) => axi_smc_M00_AXI_AWADDR(48 downto 0),
      saxigp2_awburst(1 downto 0) => axi_smc_M00_AXI_AWBURST(1 downto 0),
      saxigp2_awcache(3 downto 0) => axi_smc_M00_AXI_AWCACHE(3 downto 0),
      saxigp2_awid(5 downto 0) => B"000000",
      saxigp2_awlen(7 downto 0) => axi_smc_M00_AXI_AWLEN(7 downto 0),
      saxigp2_awlock => axi_smc_M00_AXI_AWLOCK(0),
      saxigp2_awprot(2 downto 0) => axi_smc_M00_AXI_AWPROT(2 downto 0),
      saxigp2_awqos(3 downto 0) => axi_smc_M00_AXI_AWQOS(3 downto 0),
      saxigp2_awready => axi_smc_M00_AXI_AWREADY,
      saxigp2_awsize(2 downto 0) => axi_smc_M00_AXI_AWSIZE(2 downto 0),
      saxigp2_awuser => '0',
      saxigp2_awvalid => axi_smc_M00_AXI_AWVALID,
      saxigp2_bid(5 downto 0) => NLW_zynq_ultra_ps_e_0_saxigp2_bid_UNCONNECTED(5 downto 0),
      saxigp2_bready => axi_smc_M00_AXI_BREADY,
      saxigp2_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      saxigp2_bvalid => axi_smc_M00_AXI_BVALID,
      saxigp2_rdata(31 downto 0) => axi_smc_M00_AXI_RDATA(31 downto 0),
      saxigp2_rid(5 downto 0) => NLW_zynq_ultra_ps_e_0_saxigp2_rid_UNCONNECTED(5 downto 0),
      saxigp2_rlast => axi_smc_M00_AXI_RLAST,
      saxigp2_rready => axi_smc_M00_AXI_RREADY,
      saxigp2_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      saxigp2_rvalid => axi_smc_M00_AXI_RVALID,
      saxigp2_wdata(31 downto 0) => axi_smc_M00_AXI_WDATA(31 downto 0),
      saxigp2_wlast => axi_smc_M00_AXI_WLAST,
      saxigp2_wready => axi_smc_M00_AXI_WREADY,
      saxigp2_wstrb(3 downto 0) => axi_smc_M00_AXI_WSTRB(3 downto 0),
      saxigp2_wvalid => axi_smc_M00_AXI_WVALID,
      saxihp0_fpd_aclk => zynq_ultra_ps_e_0_pl_clk0
    );
end STRUCTURE;
