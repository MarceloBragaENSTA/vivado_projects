----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/28/2025 01:30:22 PM
-- Design Name: 
-- Module Name: top_wrapper - Structural
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------




--TOP WRAPPER ONLY TO INVERT SIGNAL OUTPUTS THAT ARE INVERSED IN FMC PINOUT TRENZ TEB0818CARRIER
--Done to not influence emuldemux logic, since it's a hardware limitation
--TE0F813 inversed pins:
--T8 R8
--AC2 AB2
--F7 G8
--AC7 AB7

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.Common.all;


entity top_wrapper is
port(
    aresetn             : in  std_logic;
    clk_sys             : in  std_logic;
    O_CLK_SCIENCE_01  : out std_logic;         
    O_SCIENCE_CTRL_01 : out std_logic;
    O_DEMUX_C0        : out std_logic_vector(1 downto 0); --MSB and LSB of C0
    O_DEMUX_C1        : out std_logic_vector(1 downto 0); --MSB and LSB of C1
    O_CLK_SCIENCE_23  : out std_logic;         
    O_SCIENCE_CTRL_23 : out std_logic;
    O_DEMUX_C2        : out std_logic_vector(1 downto 0); --MSB and LSB of C2
    O_DEMUX_C3        : out std_logic_vector(1 downto 0); --MSB and LSB of C3
    O_finished        : out std_logic; --set once finished sending MAX_COUNT pixels

    -- Ports of Axi Slave Bus Interface S_AXI
    s_axi_aclk	    : in std_logic;
    s_axi_aresetn	: in std_logic;
    s_axi_awaddr	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    s_axi_awprot	: in std_logic_vector(2 downto 0);
    s_axi_awvalid	: in std_logic;
    s_axi_awready	: out std_logic;
    s_axi_wdata	    : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    s_axi_wstrb	    : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
    s_axi_wvalid	: in std_logic;
    s_axi_wready	: out std_logic;
    s_axi_bresp	    : out std_logic_vector(1 downto 0);
    s_axi_bvalid	: out std_logic;
    s_axi_bready	: in std_logic;
    s_axi_araddr	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    s_axi_arprot	: in std_logic_vector(2 downto 0);
    s_axi_arvalid	: in std_logic;
    s_axi_arready	: out std_logic;
    s_axi_rdata	    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    s_axi_rresp	    : out std_logic_vector(1 downto 0);
    s_axi_rvalid	: out std_logic;
    s_axi_rready	: in std_logic;

    -- Ports of Axi Slave Bus Interface S_AXIS
    s_axis_aclk	    : in std_logic;
    s_axis_aresetn	: in std_logic;
    s_axis_tready	: inout std_logic;
    s_axis_tdata	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
    s_axis_tstrb	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
    s_axis_tlast	: in std_logic;
    s_axis_tvalid	: in std_logic;

    -- Ports of Axi Master Bus Interface M_AXIS
    m_axis_aclk	    : in std_logic;
    m_axis_aresetn	: in std_logic;
    m_axis_tvalid	: out std_logic;
    m_axis_tdata	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
    m_axis_tstrb	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
    m_axis_tlast	: out std_logic;
    m_axis_tready	: in std_logic);
end top_wrapper;

architecture Structural of top_wrapper is

    --auxliary output signals
    signal aux_O_CLK_SCIENCE_01  : std_logic;
    signal aux_O_SCIENCE_CTRL_01 : std_logic; 
    signal aux_O_DEMUX_C0        : std_logic_vector(1 downto 0);
    signal aux_O_DEMUX_C1        : std_logic_vector(1 downto 0);
    
    signal aux_O_CLK_SCIENCE_23  : std_logic;
    signal aux_O_SCIENCE_CTRL_23 : std_logic;
    signal aux_O_DEMUX_C2        : std_logic_vector(1 downto 0);
    signal aux_O_DEMUX_C3        : std_logic_vector(1 downto 0);
    
    
-- component declaration
	component emul_demux_SM_v1_0 is
		port (
		aresetn             : in  std_logic;
        clk_sys             : in  std_logic;

        -- interface Sortie DEMUX (4 Colonnes), FMC connectors
        O_CLK_SCIENCE_01  : out std_logic;         
        O_SCIENCE_CTRL_01 : out std_logic;
        O_DEMUX_C0        : out std_logic_vector(1 downto 0); --MSB and LSB of C0
        O_DEMUX_C1        : out std_logic_vector(1 downto 0); --MSB and LSB of C1
        
        O_CLK_SCIENCE_23  : out std_logic;         
        O_SCIENCE_CTRL_23 : out std_logic;
        O_DEMUX_C2        : out std_logic_vector(1 downto 0); --MSB and LSB of C2
        O_DEMUX_C3        : out std_logic_vector(1 downto 0); --MSB and LSB of C3
        
        O_finished        : out std_logic; --set once finished sending MAX_COUNT pixels
        
		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S_AXI
		s_axi_aclk	    : in std_logic;
		s_axi_aresetn	: in std_logic;
		s_axi_awaddr	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		s_axi_awprot	: in std_logic_vector(2 downto 0);
		s_axi_awvalid	: in std_logic;
		s_axi_awready	: out std_logic;
		s_axi_wdata	    : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		s_axi_wstrb	    : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		s_axi_wvalid	: in std_logic;
		s_axi_wready	: out std_logic;
		s_axi_bresp	    : out std_logic_vector(1 downto 0);
		s_axi_bvalid	: out std_logic;
		s_axi_bready	: in std_logic;
		s_axi_araddr	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		s_axi_arprot	: in std_logic_vector(2 downto 0);
		s_axi_arvalid	: in std_logic;
		s_axi_arready	: out std_logic;
		s_axi_rdata	    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		s_axi_rresp	    : out std_logic_vector(1 downto 0);
		s_axi_rvalid	: out std_logic;
		s_axi_rready	: in std_logic;

		-- Ports of Axi Slave Bus Interface S_AXIS
		s_axis_aclk	    : in std_logic;
		s_axis_aresetn	: in std_logic;
		s_axis_tready	: inout std_logic;
		s_axis_tdata	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
		s_axis_tstrb	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s_axis_tlast	: in std_logic;
		s_axis_tvalid	: in std_logic;

		-- Ports of Axi Master Bus Interface M_AXIS
		m_axis_aclk	    : in std_logic;
		m_axis_aresetn	: in std_logic;
		m_axis_tvalid	: out std_logic;
		m_axis_tdata	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
		m_axis_tstrb	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m_axis_tlast	: out std_logic;
		m_axis_tready	: in std_logic
		);
	end component emul_demux_SM_v1_0;
begin

emul_demux_SM_v1_0_inst : emul_demux_SM_v1_0
	port map (
            clk_sys       => clk_sys,
            s_axi_aclk    => s_axi_aclk,
            aresetn       => aresetn,
            s_axi_aresetn => s_axi_aresetn,
            S_AXI_AWADDR  => S_AXI_AWADDR,
            S_AXI_AWPROT  => S_AXI_AWPROT,
            S_AXI_AWVALID => S_AXI_AWVALID,
            S_AXI_AWREADY => S_AXI_AWREADY,
            S_AXI_WDATA   => S_AXI_WDATA,
            S_AXI_WSTRB   => S_AXI_WSTRB,
            S_AXI_WVALID  => S_AXI_WVALID,
            S_AXI_WREADY  => S_AXI_WREADY,
            S_AXI_BRESP   => S_AXI_BRESP,
            S_AXI_BVALID  => S_AXI_BVALID,
            S_AXI_BREADY  => S_AXI_BREADY,
            S_AXI_ARADDR  => S_AXI_ARADDR,
            S_AXI_ARPROT  => S_AXI_ARPROT,
            S_AXI_ARVALID => S_AXI_ARVALID,
            S_AXI_ARREADY => S_AXI_ARREADY,
            S_AXI_RDATA   => S_AXI_RDATA,
            S_AXI_RRESP   => S_AXI_RRESP,
            S_AXI_RVALID  => S_AXI_RVALID,
            S_AXI_RREADY  => S_AXI_RREADY,
            S_AXIS_ACLK	  => S_AXIS_ACLK,
            S_AXIS_ARESETN	=> S_AXIS_ARESETN,
            S_AXIS_TREADY   => S_AXIS_TREADY,
            S_AXIS_TDATA	=> S_AXIS_TDATA,
            S_AXIS_TSTRB	=> S_AXIS_TSTRB,
            S_AXIS_TLAST	=> S_AXIS_TLAST,
            S_AXIS_TVALID	=> s_axis_tvalid,
            M_AXIS_ACLK	    => M_AXIS_ACLK,
            M_AXIS_ARESETN	=> M_AXIS_ARESETN,
            M_AXIS_TVALID	=> M_AXIS_TVALID,
            M_AXIS_TDATA	=> M_AXIS_TDATA,
            M_AXIS_TSTRB	=> M_AXIS_TSTRB,
            M_AXIS_TLAST	=> M_AXIS_TLAST,
            M_AXIS_TREADY   => M_AXIS_TREADY,     
            O_CLK_SCIENCE_01  => aux_O_CLK_SCIENCE_01,
            O_SCIENCE_CTRL_01 => aux_O_SCIENCE_CTRL_01,
            O_DEMUX_C0        => aux_O_DEMUX_C0,
            O_DEMUX_C1        => aux_O_DEMUX_C1,
            O_CLK_SCIENCE_23  => aux_O_CLK_SCIENCE_23,
            O_SCIENCE_CTRL_23 => aux_O_SCIENCE_CTRL_23,
            O_DEMUX_C2        => aux_O_DEMUX_C2,
            O_DEMUX_C3        => aux_O_DEMUX_C3,
            O_finished        => O_finished
        );


--correction due to Trenz FMC pin inversions
O_CLK_SCIENCE_01      <= aux_O_CLK_SCIENCE_01; 
O_SCIENCE_CTRL_01     <= aux_O_SCIENCE_CTRL_01;
O_DEMUX_C0            <= (not aux_O_DEMUX_C0(1)) & aux_O_DEMUX_C0(0);
O_DEMUX_C1            <= (not aux_O_DEMUX_C1(1)) & aux_O_DEMUX_C1(0);

O_CLK_SCIENCE_23      <= aux_O_CLK_SCIENCE_23;     
O_SCIENCE_CTRL_23     <= not aux_O_SCIENCE_CTRL_23;
O_DEMUX_C2            <= aux_O_DEMUX_C2;
O_DEMUX_C3            <= aux_O_DEMUX_C3(1) & (not aux_O_DEMUX_C3(0));


end Structural;
