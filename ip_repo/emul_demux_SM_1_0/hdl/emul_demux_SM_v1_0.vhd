--hey apple
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--package for definitions between module and testbench
package Common is
        -- Parameters of Axi Slave Bus Interface S_AXI
		constant C_S_AXI_DATA_WIDTH	: integer	:= 32;
		constant C_S_AXI_ADDR_WIDTH	: integer	:= 8;

		-- Parameters of Axi Slave Bus Interface S_AXIS
		constant C_S_AXIS_TDATA_WIDTH	: integer	:= 32;

		-- Parameters of Axi Master Bus Interface M_AXIS
		constant C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
		
    	--AXI lite registers addr offset
        constant BASE_REG_OFFSET           : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := x"00";
        constant STATUS_REG_OFFSET         : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := x"04";
        constant DEBUGINFO_OFFSET          : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := x"08";
        constant NUM_PXLSTOTRANSMIT_OFFSET : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := x"0c";
        constant NUM_PXLSPERFRAME_OFFSET   : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := x"10";
        constant LOGBUF_RPTR_OFFSET         : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := x"14"; 
        constant LOGBUF_TIMESTAMPLSB_OFFSET : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := x"18"; 
        constant LOGBUF_TIMESTAMPMSB_OFFSET : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := x"1c";
        constant LOGBUF_FRAMENUM_OFFSET     : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := x"20";
        constant LOGBUF_STATUS_OFFSET       : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := x"24";
        
        constant BUTTON_PRESS_VAL          : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := x"00001000";
        constant BUTTON_PRESS_BITPOS       : integer := 12;
        
        constant CTRL_WORD_LEN           : integer := 8;
        constant CTRL_WORD_DTW           : std_logic_vector(CTRL_WORD_LEN-1 downto 0) := "11000000"; --DaTa Word
        constant CTRL_WORD_FWD           : std_logic_vector(CTRL_WORD_LEN-1 downto 0) := "11000010"; --First Word od adc Data
        constant CTRL_WORD_FWS           : std_logic_vector(CTRL_WORD_LEN-1 downto 0) := "11001000"; --First Word of Science
        constant CTRL_WORD_DTV           : std_logic_vector(CTRL_WORD_LEN-1 downto 0) := "11001010"; --DaTa Valid
        constant CTRL_WORD_TPT           : std_logic_vector(CTRL_WORD_LEN-1 downto 0) := "11100000"; --Test PaTtern
        constant CTRL_WORD_ERR           : std_logic_vector(CTRL_WORD_LEN-1 downto 0) := "11100010"; --ERRor signal
        constant CTRL_WORD_LDW           : std_logic_vector(CTRL_WORD_LEN-1 downto 0) := "11101010"; --Last Data Word
        
        --constant PXLS_PER_FRAME          : integer := 34;
        constant OUTPUT_WIDTH            : integer := 8;
end Common;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Common.all;

entity emul_demux_SM_v1_0 is
	--generic (
		-- Users to add parameters here
		-- User parameters ends
		-- Do not modify the parameters beyond this line
    --);
	port (
		-- Users to add ports here
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
end emul_demux_SM_v1_0;

architecture arch_imp of emul_demux_SM_v1_0 is

signal pxls_to_transmit_reg  : std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
signal   PIXEL_COUNT_MAX     : std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
signal pxls_per_frame_reg    : std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
signal   PXLS_PER_FRAME      : std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
signal start_emul_reg        : std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
signal logbuf_r_ptr_reg      : std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
signal logbuf_timestamp_lsb_reg  : std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
signal logbuf_timestamp_msb_reg  : std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
signal logbuf_frame_num_reg      : std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
signal logbuf_status_reg         : std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);

	-- component declaration
	component emul_demux_SM_v1_0_S_AXI is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 8
		);
		port (
		finished_reg    : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		debug_info_reg  : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		logbuf_timestamp_lsb_reg : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        logbuf_timestamp_msb_reg : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        logbuf_frame_num_reg     : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        logbuf_status_reg        : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		start_emul_reg       : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);	
		pxls_to_transmit_reg : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);		
		pxls_per_frame_reg   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);	
	    logbuf_r_ptr_reg     : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);		
		S_AXI_ACLK	    : in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	    : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	    : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	    : out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	    : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	    : out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component emul_demux_SM_v1_0_S_AXI;

--	component emul_demux_stream_v1_0_S00_AXIS is
--		generic (
--		C_S_AXIS_TDATA_WIDTH	: integer	:= 32
--		);
--		port (
--		S_AXIS_ACLK	    : in std_logic;
--		S_AXIS_ARESETN	: in std_logic;
--		S_AXIS_TREADY	: out std_logic;
--		S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
--		S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
--		S_AXIS_TLAST	: in std_logic;
--		S_AXIS_TVALID	: in std_logic
--		);
--	end component emul_demux_stream_v1_0_S00_AXIS;

--	component emul_demux_stream_v1_0_M00_AXIS is
--		generic (
--		C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
--		C_M_START_COUNT	: integer	:= 32
--		);
--		port (
--		M_AXIS_ACLK	: in std_logic;
--		M_AXIS_ARESETN	: in std_logic;
--		M_AXIS_TVALID	: out std_logic;
--		M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
--		M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
--		M_AXIS_TLAST	: out std_logic;
--		M_AXIS_TREADY	: in std_logic
--		);
--	end component emul_demux_stream_v1_0_M00_AXIS;

-- output registers
signal SCIENCE_CTRL_01_r  : std_logic_vector(OUTPUT_WIDTH-1 downto 0); --CC
signal c0_science_data0_r : std_logic_vector(OUTPUT_WIDTH-1 downto 0); --C0 LSB (7-0)C0
signal c0_science_data1_r : std_logic_vector(OUTPUT_WIDTH-1 downto 0); --C0 MSB (15-8)
signal c1_science_data0_r : std_logic_vector(OUTPUT_WIDTH-1 downto 0); --C1 LSB (7-0)
signal c1_science_data1_r : std_logic_vector(OUTPUT_WIDTH-1 downto 0); --C1 MSB (15-8)

signal SCIENCE_CTRL_23_r  : std_logic_vector(OUTPUT_WIDTH-1 downto 0); --CC
signal c2_science_data0_r : std_logic_vector(OUTPUT_WIDTH-1 downto 0); --C2 LSB (7-0)
signal c2_science_data1_r : std_logic_vector(OUTPUT_WIDTH-1 downto 0); --C2 MSB (15-8)
signal c3_science_data0_r : std_logic_vector(OUTPUT_WIDTH-1 downto 0); --C3 LSB (7-0)
signal c3_science_data1_r : std_logic_vector(OUTPUT_WIDTH-1 downto 0); --C3 MSB (15-8)

-- Counter registers
--TODO keep mind that this limits the address range to 1048576, can be increased
signal cnt_pixels         : unsigned(20 downto 0);

-- Registers used for PS write
signal prev_button_r     : std_logic := '0'; --to start the module
signal button_r          : std_logic := '0';
-- s_axi registers read by PS
signal s_axi_finished_reg : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
signal s_axi_debug_reg    : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);

-- temporary buffers
signal s_axis_tdata_prev : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); --needed for saving Col0 then Col1 value

signal s_axis_ctrl01     : std_logic_vector(7 downto 0);
signal s_axis_ctrl23     : std_logic_vector(7 downto 0);

-- shifting tempo
signal cnt_data_serializer   : unsigned(3 downto 0);
signal data_serializer_tempo : unsigned(3 downto 0);

--timestamping
signal timestamp_cnt         :unsigned(63 downto 0) := (others => '0'); --for 100MHz clk -> 64bits = 2135039 days, 32bits = 43 seg
signal frame_cnt             :unsigned(31 downto 0) := (others => '0');
type frame_log_entry is record
    timestamp : unsigned(63 downto 0); -- 64-bit timestamp
    frame_id  : unsigned(31 downto 0); -- Frame ID or metadata
    cur_status: unsigned(31 downto 0); -- Debug status at that time
end record;
constant log_buffer_size : integer := 10;
type frame_log_buffer is array (0 to log_buffer_size-1) of frame_log_entry;
signal log_buffer : frame_log_buffer;
signal log_buffer_w_ptr  : integer range 0 to log_buffer_size-1 := 0; -- Circular buffer pointer

type demux_state_type is
(
    IDLE,       --1
    WAIT_CTRL,  --2
    WAIT_DATA0, --3
    WAIT_DATA1, --4
    SEND_ALL,   --5
    FINISHED    --6
);
signal demux_state          : demux_state_type;
signal state_debug          : std_logic_vector(2 downto 0);
signal error_debug          : std_logic_vector(3 downto 0) := "0000";

--not used currently
type acquisition_mode_type is
(
    NOT_DEFINED,
    SCIENCE,
    DUMP,
    ERROR,
    TEST_PATTERN
);
signal acquisition_mode      : acquisition_mode_type;

--shift function to output signals in 1bit channel
function shift_signal(input_signal : std_logic_vector) return std_logic_vector is
begin
    return input_signal(OUTPUT_WIDTH-2 downto 0) & 'L';
end function;


begin

-- Instantiation of Axi Bus Interface S_AXI
emul_demux_SM_v1_0_S_AXI_inst : emul_demux_SM_v1_0_S_AXI
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S_AXI_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S_AXI_ADDR_WIDTH
	)
	port map (
	    finished_reg    => s_axi_finished_reg,
	    debug_info_reg  => s_axi_debug_reg,
	    logbuf_timestamp_lsb_reg => logbuf_timestamp_lsb_reg,
        logbuf_timestamp_msb_reg => logbuf_timestamp_msb_reg,
        logbuf_frame_num_reg     => logbuf_frame_num_reg,
        logbuf_status_reg        => logbuf_status_reg,
	    start_emul_reg       => start_emul_reg,
	    pxls_to_transmit_reg => pxls_to_transmit_reg,
	    pxls_per_frame_reg   => pxls_per_frame_reg,
	    logbuf_r_ptr_reg     => logbuf_r_ptr_reg,		
		S_AXI_ACLK	    => s_axi_aclk,
		S_AXI_ARESETN	=> s_axi_aresetn,
		S_AXI_AWADDR	=> s_axi_awaddr,
		S_AXI_AWPROT	=> s_axi_awprot,
		S_AXI_AWVALID	=> s_axi_awvalid,
		S_AXI_AWREADY	=> s_axi_awready,
		S_AXI_WDATA	    => s_axi_wdata,
		S_AXI_WSTRB	    => s_axi_wstrb,
		S_AXI_WVALID	=> s_axi_wvalid,
		S_AXI_WREADY	=> s_axi_wready,
		S_AXI_BRESP	    => s_axi_bresp,
		S_AXI_BVALID	=> s_axi_bvalid,
		S_AXI_BREADY	=> s_axi_bready,
		S_AXI_ARADDR	=> s_axi_araddr,
		S_AXI_ARPROT	=> s_axi_arprot,
		S_AXI_ARVALID	=> s_axi_arvalid,
		S_AXI_ARREADY	=> s_axi_arready,
		S_AXI_RDATA	    => s_axi_rdata,
		S_AXI_RRESP	    => s_axi_rresp,
		S_AXI_RVALID	=> s_axi_rvalid,
		S_AXI_RREADY	=> s_axi_rready
	);
	
--component emul_demux_ip_ddr_v1_0_S_AXIS is
--    generic (
--    C_S_AXIS_TDATA_WIDTH	: integer	:= 32
--    );
--    port (
--    fifo_C0_DO     :  out std_logic_vector(((C_S_AXIS_TDATA_WIDTH/4)-1)downto 0);
--    fifo_C0_D1     :  out std_logic_vector(((C_S_AXIS_TDATA_WIDTH/4)-1)downto 0);
--    fifo_C1_DO     :  out std_logic_vector(((C_S_AXIS_TDATA_WIDTH/4)-1)downto 0);
--    fifo_C1_D1     :  out std_logic_vector(((C_S_AXIS_TDATA_WIDTH/4)-1)downto 0);
--    user_read_data : in std_logic;
--    S_AXIS_ACLK	    : in std_logic;
--    S_AXIS_ARESETN	: in std_logic;
--    S_AXIS_TREADY	: out std_logic;
--    S_AXIS_TDATA	: in std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
--    S_AXIS_TSTRB	: in std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
--    S_AXIS_TLAST	: in std_logic;
--    S_AXIS_TVALID	: in std_logic
--    );
--end component emul_demux_ip_ddr_v1_0_S_AXIS;

--component emul_demux_ip_ddr_v1_0_M_AXIS is
--    generic (
--    C_M_AXIS_TDATA_WIDTH	: integer	:= 32;
--    C_M_START_COUNT	: integer	:= 32
--    );
--    port (
--    M_AXIS_ACLK	: in std_logic;
--    M_AXIS_ARESETN	: in std_logic;
--    M_AXIS_TVALID	: out std_logic;
--    M_AXIS_TDATA	: out std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
--    M_AXIS_TSTRB	: out std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
--    M_AXIS_TLAST	: out std_logic;
--    M_AXIS_TREADY	: in std_logic
--    );
--end component emul_demux_ip_ddr_v1_0_M_AXIS;
	
-- sortie colonnes DEMUX
--OBUFDS_inst: OBUFDS
--    generic map (
--        IOSTANDARD => "LVDS"
--    )
--    port map (
--        I  => clk_sys,
--        O  => O_CLK_SCIENCE_01_P,
--        OB => O_CLK_SCIENCE_01_N
--    );


    -- Output is the concatenation of the last data bits of each D signal.
    -- Last bit is shifted till all bits are outputed
    --TODO: ATTENTION: DUE TO HARDWARE LIMITATION IN FMC CONNECTOR PINOUT,
    -- SOME SIGNALS ARE INVERSED with a 'not' gate. Change this bricolage to the block design later if simpler,
    -- the IP should be transparent to this
--    O_CLK_SCIENCE_01      <= clk_sys;
--    O_SCIENCE_CTRL_01     <= SCIENCE_CTRL_01_r(DATA_WIDTH-1);
--    O_DEMUX_C0            <=(not c0_science_data1_r(DATA_WIDTH-1)) & c0_science_data0_r(DATA_WIDTH-1);
--    O_DEMUX_C1            <=(not c1_science_data1_r(DATA_WIDTH-1)) & c1_science_data0_r(DATA_WIDTH-1);
    
--    O_CLK_SCIENCE_23      <= clk_sys;
--    O_SCIENCE_CTRL_23     <= not SCIENCE_CTRL_23_r(DATA_WIDTH-1);
--    O_DEMUX_C2            <= c2_science_data1_r(DATA_WIDTH-1) & c2_science_data0_r(DATA_WIDTH-1);
--    O_DEMUX_C3            <= c3_science_data1_r(DATA_WIDTH-1) & (not c3_science_data0_r(DATA_WIDTH-1));
    
--    O_finished            <= s_axi_finished_reg(0);    
    O_CLK_SCIENCE_01      <= clk_sys;
    O_SCIENCE_CTRL_01     <= SCIENCE_CTRL_01_r(OUTPUT_WIDTH-1);
    O_DEMUX_C0            <= c0_science_data0_r(OUTPUT_WIDTH-1) & c0_science_data1_r(OUTPUT_WIDTH-1);
    O_DEMUX_C1            <= c1_science_data0_r(OUTPUT_WIDTH-1) & c1_science_data1_r(OUTPUT_WIDTH-1);
    
    O_CLK_SCIENCE_23      <= clk_sys;
    O_SCIENCE_CTRL_23     <= SCIENCE_CTRL_23_r(OUTPUT_WIDTH-1);
    O_DEMUX_C2            <= c2_science_data0_r(OUTPUT_WIDTH-1) & c2_science_data1_r(OUTPUT_WIDTH-1);
    O_DEMUX_C3            <= c3_science_data0_r(OUTPUT_WIDTH-1) & c3_science_data1_r(OUTPUT_WIDTH-1);
    
    O_finished            <= s_axi_finished_reg(0);   

	-- Add user logic here
--Note:AXI Master should send CTRL+2DATA signals one after the other
    p_Start_Module: process(s_axi_aclk, s_axi_aresetn)
    
    --Process Button (sent by AXI Lite) to start the module
    procedure process_button_press is
    begin
        --Wait for button press via AXI lite read
        button_r <= start_emul_reg(BUTTON_PRESS_BITPOS);
        prev_button_r <= button_r;
    end procedure;
    
    procedure shift_all_signals is
    begin
        c0_science_data0_r <= shift_signal(c0_science_data0_r);
        c0_science_data1_r <= shift_signal(c0_science_data1_r);
        c1_science_data0_r <= shift_signal(c1_science_data0_r);
        c1_science_data1_r <= shift_signal(c1_science_data1_r);
        c2_science_data0_r <= shift_signal(c2_science_data0_r);
        c2_science_data1_r <= shift_signal(c2_science_data1_r);
        c3_science_data0_r <= shift_signal(c3_science_data0_r);
        c3_science_data1_r <= shift_signal(c3_science_data1_r);
        SCIENCE_CTRL_01_r  <= shift_signal(SCIENCE_CTRL_01_r);
        SCIENCE_CTRL_23_r  <= shift_signal(SCIENCE_CTRL_23_r);
    end procedure;
    
    procedure state_to_debug is
    begin
        case demux_state is
            when IDLE       => state_debug <= "001";
            when WAIT_CTRL  => state_debug <= "010";
            when WAIT_DATA0 => state_debug <= "011";
            when WAIT_DATA1 => state_debug <= "100";
            when SEND_ALL   => state_debug <= "101";
            when FINISHED   => state_debug <= "110";
            when others     => state_debug <= "000";
        end case;
    end procedure;
    
    begin
    -- Reset logic
        if (s_axi_aresetn = '0') then
            prev_button_r  <= '0';
            button_r       <= '0';
            demux_state    <= IDLE;
            state_debug    <= "001";
            s_axis_tready <= '0';
            SCIENCE_CTRL_01_r  <= (others => 'L');
            SCIENCE_CTRL_23_r  <= (others => 'L');
            c0_science_data0_r <= (others => 'L');
            c0_science_data1_r <= (others => 'L');
            c1_science_data0_r <= (others => 'L');
            c1_science_data1_r <= (others => 'L');
            c2_science_data0_r <= (others => 'L');
            c2_science_data1_r <= (others => 'L');
            c3_science_data0_r <= (others => 'L');
            c3_science_data1_r <= (others => 'L');
            cnt_pixels         <= (others => '0');
            cnt_data_serializer <= (others => '0');
            s_axi_finished_reg <= x"00000000";
            s_axis_ctrl01      <= (others => '0');
            s_axis_ctrl23      <= (others => '0');
            s_axis_tdata_prev  <= (others => '0');
            PIXEL_COUNT_MAX    <= (others => '0');
            PXLS_PER_FRAME    <= (others => '0');
        elsif falling_edge(s_axi_aclk) then      
          
            case demux_state is
            --IDLE: Wait until a button press to start the module
            when IDLE =>
                s_axis_tready <= '0';
                SCIENCE_CTRL_01_r  <= (others => 'L');
                SCIENCE_CTRL_23_r  <= (others => 'L');
                c0_science_data0_r <= (others => 'L');
                c0_science_data1_r <= (others => 'L');
                c1_science_data0_r <= (others => 'L');
                c1_science_data1_r <= (others => 'L');
                c2_science_data0_r <= (others => 'L');
                c2_science_data1_r <= (others => 'L');
                c3_science_data0_r <= (others => 'L');
                c3_science_data1_r <= (others => 'L');
                cnt_pixels         <= (others => '0');
                cnt_data_serializer <= (others => '0');
                s_axi_finished_reg <= x"00000000";
                process_button_press;
                --Button pressed (rising edge)
                if (prev_button_r = '0' and button_r = '1') then
                    button_r <= '0';
                    prev_button_r <= '0';
                    s_axis_tready <= '1'; --TREADY signal must be assigned one clock prior to receiving TDATA
                    
                    --Configuration registers should previously be written by software on AXI lite interface!!!)
                    PIXEL_COUNT_MAX <= pxls_to_transmit_reg;
                    PXLS_PER_FRAME  <= pxls_per_frame_reg;
                    
                    demux_state   <= WAIT_CTRL;
                end if;
               
            -- WAIT_CTRL: wait for CC words in 32bit via axis steram     
            when WAIT_CTRL =>   --save ctrl words
                s_axis_tready <= '1';
                if(s_axis_tvalid = '1') then
                      s_axis_ctrl01 <= s_axis_tdata(2*CTRL_WORD_LEN-1 downto CTRL_WORD_LEN);                        
                      s_axis_ctrl23 <= s_axis_tdata(CTRL_WORD_LEN-1   downto 0);
             
                    demux_state <= WAIT_DATA0;
                end if;
                shift_all_signals;
                
            -- WAIT_DATA0: wait for pixels in col0 and col1 in 32bit via axis steram     
            when WAIT_DATA0 =>  --save col0 and col1 pixels
                s_axis_tready <= '1';
                if(s_axis_tvalid = '1') then
                    s_axis_tdata_prev <= s_axis_tdata;
                    demux_state       <= WAIT_DATA1;
                end if;
                shift_all_signals;
            
            -- WAIT_DATA1: wait for pixels in col2 and col3 in 32bit via axis steram         
            when WAIT_DATA1 =>  --save col2 and col3 pixels and assign cc words and col0 and col1
                s_axis_tready <= '0';
                if(s_axis_tvalid = '1') then
                    cnt_pixels        <= cnt_pixels +1;
--                    SCIENCE_CTRL_01_r <= "11" & s_axis_ctrl01(2) & "0" & s_axis_ctrl01(1) & "0" & s_axis_ctrl01(0) & "0";
--                    SCIENCE_CTRL_23_r <= "11" & s_axis_ctrl23(2) & "0" & s_axis_ctrl23(1) & "0" & s_axis_ctrl23(0) & "0";
                    SCIENCE_CTRL_01_r <= s_axis_ctrl01;
                    SCIENCE_CTRL_23_r <= s_axis_ctrl23;
                    c0_science_data0_r <= s_axis_tdata_prev(4*OUTPUT_WIDTH-1 downto 3*OUTPUT_WIDTH);
                    c0_science_data1_r <= s_axis_tdata_prev(3*OUTPUT_WIDTH-1 downto 2*OUTPUT_WIDTH);
                    c1_science_data0_r <= s_axis_tdata_prev(2*OUTPUT_WIDTH-1 downto   OUTPUT_WIDTH);
                    c1_science_data1_r <= s_axis_tdata_prev(  OUTPUT_WIDTH-1 downto              0);
                    c2_science_data0_r <= s_axis_tdata(4*OUTPUT_WIDTH-1 downto 3*OUTPUT_WIDTH);
                    c2_science_data1_r <= s_axis_tdata(3*OUTPUT_WIDTH-1 downto 2*OUTPUT_WIDTH);
                    c3_science_data0_r <= s_axis_tdata(2*OUTPUT_WIDTH-1 downto   OUTPUT_WIDTH);
                    c3_science_data1_r <= s_axis_tdata(  OUTPUT_WIDTH-1 downto              0);
                    demux_state        <= SEND_ALL;
                end if;  
                
            --SEND_ALL: continue shifting signals at output until new cycle or all pixels are processed
            when SEND_ALL =>    --transmit 
                s_axis_tready <= '0';
                cnt_data_serializer <= cnt_data_serializer + 1;
                
                if(cnt_pixels >= unsigned(PIXEL_COUNT_MAX)) then
                    demux_state <= FINISHED;
                elsif(cnt_data_serializer > data_serializer_tempo) then
                    cnt_data_serializer <= (others => '0');
                    s_axis_tready <= '1';
                    demux_state <= WAIT_CTRL;
                end if;
                shift_all_signals;
                
            --FINISHED: update status LED and wait button press for reseting module
            when FINISHED =>
                s_axi_finished_reg <= x"00000001";
                
                process_button_press;
                --Button pressed (rising edge)
                if (prev_button_r = '0' and button_r = '1') then
                    button_r <= '0';
                    prev_button_r <= '0';
                    demux_state   <= IDLE;
                end if; 
                shift_all_signals;
                    
            when others =>      --should never happen. Treat later with error
                                               
            end case;
            state_to_debug;
        end if;
    end process p_Start_Module;
    
    
s_axi_debug_reg <=  "0" & state_debug  & error_debug  & (23 downto 21 => '0') & std_logic_vector(cnt_pixels);


    
--verify cc words related errors and establish serializer_tempo
p_CheckCC_words: process(s_axi_aclk, s_axi_aresetn)
    variable cnt_pxls_frame : unsigned(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
begin
     if (s_axi_aresetn = '0') then
            error_debug <= (others => '0');
            cnt_pxls_frame := (others => '0');
            data_serializer_tempo  <= x"5";
    elsif falling_edge(s_axi_aclk) then  
        case demux_state is
            when IDLE =>
                error_debug <= (others => '0');
                cnt_pxls_frame := (others => '0');
                
            when WAIT_DATA0 => --state right after WAIT_CTRL
                --verifying only ctrl01. TBD: can these ctrl words be different, or they should always be the same?
                if(s_axis_ctrl01 = CTRL_WORD_DTW
                or s_axis_ctrl01 = CTRL_WORD_LDW) then
                --nop
                --pixel0 CCs
                elsif (s_axis_ctrl01 = CTRL_WORD_FWD) then
                    --Dump mode check (10data bits)
                    data_serializer_tempo <= x"3";
                elsif(s_axis_ctrl01 = CTRL_WORD_FWS 
                   or s_axis_ctrl01 = CTRL_WORD_TPT
                   or s_axis_ctrl01 = CTRL_WORD_DTV
                   or s_axis_ctrl01 = CTRL_WORD_ERR) then
                   --Normal behavior (8data bits + 2dead bits)
                    data_serializer_tempo <= x"5"; --value for 2 dead clock cycles as defined by the specifications
                    --data_serializer_tempo <= x"D"; --value for 10 dead clock cycles, for Charles tests
                --CC word not specified
                else
                    --error ctrl word: not specified
                    error_debug <= error_debug or "0100";
                end if;
                
            when WAIT_DATA1 => 
                --error in pixel0: FWS    
                if (cnt_pxls_frame = 0 and 
                    (s_axis_ctrl01 /= CTRL_WORD_FWS or s_axis_ctrl23 /= CTRL_WORD_FWS))
                    or ((s_axis_ctrl01 = CTRL_WORD_FWS or s_axis_ctrl23 = CTRL_WORD_FWS) and cnt_pxls_frame /= 0) then
                    error_debug <= error_debug or "0001";
                --error in lastpixel: LDW
                elsif (cnt_pxls_frame = to_integer(unsigned(PXLS_PER_FRAME))-1 and 
                    (s_axis_ctrl01 /= CTRL_WORD_LDW or s_axis_ctrl23 /= CTRL_WORD_LDW))
                    or ((s_axis_ctrl01 = CTRL_WORD_LDW or s_axis_ctrl23 = CTRL_WORD_LDW) and cnt_pxls_frame /= to_integer(unsigned(PXLS_PER_FRAME))-1) then
                    error_debug <= error_debug or "0010";
                end if;
    
                if (cnt_pxls_frame = to_integer(unsigned(PXLS_PER_FRAME))-1) then
                    cnt_pxls_frame := (others => '0');  -- Reset the variable counter
                else 
                    cnt_pxls_frame := cnt_pxls_frame + 1;  -- Increment the variable counter
        
                end if;
    --        when FINISHED =>
    --            error_debug <= (others => '0');
                when others =>
                    
        end case;
    end if;
end process p_CheckCC_words;


--  Retransmit all axi stream slave data to axi stream master interface for loopback data verification
p_Retransmit_Data: process(m_axis_aclk, s_axi_aresetn)
begin
    if (s_axi_aresetn = '0') then  
        m_axis_tvalid <= '0';
        m_axis_tdata  <= (others => '0');
    elsif falling_edge(m_axis_aclk) then      
        case demux_state is
        when IDLE =>
            m_axis_tvalid <= '0';  
            
        when WAIT_CTRL =>   --save ctrl words
            if(s_axis_tvalid = '1') then
                m_axis_tvalid <= '1';
                m_axis_tdata <= s_axis_tdata;     
            end if;                
        when WAIT_DATA0 =>  --save col0 and col1 pixels
            if(s_axis_tvalid = '1') then
                m_axis_tvalid <= '1';
                m_axis_tdata <= s_axis_tdata;
            end if;

        when WAIT_DATA1 =>  --save col2 and col3 pixels and assign cc words and col0 and col1
            if(s_axis_tvalid = '1') then 
                m_axis_tvalid <= '1';
                m_axis_tdata <= s_axis_tdata;
            end if;  
            
        when SEND_ALL =>    --transmit 
            m_axis_tvalid <= '0';
            m_axis_tdata <= (others => '0');
         
        when others =>      --should never happen. Treat later with error
            m_axis_tvalid <= '0';
            m_axis_tdata <= (others => '0');   
                                           
        end case;
    end if;
end process p_Retransmit_Data;



---------------TIMESTAMPING------------------------------------------------------
--timestamping currently done by the PL fabric. It should have a mechanism later 
--to sync its time with software.
--a timestamp will be attached to each frame (one for each pixel may be to much)
--the PL will control the writing of timestamps in the circular buffer
--the PS wil thourgh AXI registers inform which buffer index to read
--TBD: timestamp counter is reseted when IDLE
--the PL will maintain a circular buffer of timestamps with a frame ID
-- ??Array or BRAM?? -> depends on size we want
--the PS will read from this buffer whenever needed (to reduce axi comm)
--Whenever an error is detected (or injected), it should notify the PS which error occured
p_Timestamping: process(s_axi_aclk, s_axi_aresetn)
begin
    -- Reset logic
    if (s_axi_aresetn = '0') then
        timestamp_cnt <= (others => '0');
        frame_cnt     <= (others => '0'); --TODO: counting pixel in frame logic in also present in other processes
        log_buffer_w_ptr <= 0;
        for i in 0 to log_buffer_size-1 loop
            log_buffer(i).timestamp <= (others => '0');
            log_buffer(i).frame_id  <= (others => '0');
            log_buffer(i).cur_status<= (others => '0');
        end loop;
    elsif falling_edge(s_axi_aclk) then     
        timestamp_cnt <= timestamp_cnt + 1;
        case demux_state is
            when IDLE =>
                --TODO: should we reset timestamping info at every IDLE state?
--                 timestamp_cnt <= (others => '0');
                 frame_cnt     <= (others => '0');
--                 log_buffer_w_ptr <= 0;
--                 for i in 0 to log_buffer_size-1 loop
--                    log_buffer(i).timestamp <= (others => '0');
--                    log_buffer(i).frame_id  <= (others => '0');
--                    log_buffer(i).cur_status<= (others => '0');
--                end loop;
            when WAIT_DATA1 =>
                --log buffer if both CC words are FWS
                if (s_axis_ctrl01 = CTRL_WORD_FWS and s_axis_ctrl23 = CTRL_WORD_FWS) then
                    log_buffer(log_buffer_w_ptr).timestamp <= timestamp_cnt;
                    log_buffer(log_buffer_w_ptr).frame_id  <= frame_cnt;
                    log_buffer(log_buffer_w_ptr).cur_status<= unsigned(s_axi_debug_reg);
                    frame_cnt <= frame_cnt + 1;
                    
                    --increment ciruclar buffer w_pointer
                    if log_buffer_w_ptr = log_buffer_size-1 then
                        log_buffer_w_ptr <= 0;
                    else
                        log_buffer_w_ptr <= log_buffer_w_ptr + 1;
                    end if;
                end if;
            when others =>          
        end case;
    end if;
end process p_Timestamping;


--------------READ LOG BUFFER------------------------------------------------
--set logbuffers registers according to index value of log buffer
--read pointer is passed by PS side via axi write
-- logbuffers values should be read by axi read
p_readLogBuffer: process(s_axi_aresetn, logbuf_r_ptr_reg, log_buffer)
    variable tmp_ptr : integer range 0 to log_buffer_size - 1;
begin
   if(s_axis_aresetn = '0') then
        logbuf_timestamp_lsb_reg  <= (others => '0');
        logbuf_timestamp_msb_reg  <= (others => '0');
        logbuf_frame_num_reg      <= (others => '0');
        logbuf_status_reg         <= (others => '0'); 
   --elsif falling_edge(s_axi_aclk) then
   else 
        --check ptr limits (always between 0 and log_buffer_size - 1)
--        tmp_ptr := to_integer(unsigned(logbuf_r_ptr_reg));
--        if (tmp_ptr < 0) then
--            tmp_ptr := 0;
--        elsif (tmp_ptr >= log_buffer_size) then
--            tmp_ptr := log_buffer_size - 1;
--        end if;
        
        logbuf_timestamp_lsb_reg <= std_logic_vector(log_buffer(to_integer(unsigned(logbuf_r_ptr_reg))).timestamp(31 downto 0));
        logbuf_timestamp_msb_reg <= std_logic_vector(log_buffer(to_integer(unsigned(logbuf_r_ptr_reg))).timestamp(63 downto 32));
        logbuf_frame_num_reg     <= std_logic_vector(log_buffer(to_integer(unsigned(logbuf_r_ptr_reg))).frame_id);
        logbuf_status_reg        <= std_logic_vector(log_buffer(to_integer(unsigned(logbuf_r_ptr_reg))).cur_status); 
   end if;
        
end process p_readLogBuffer;
--	 User logic ends

end arch_imp;
