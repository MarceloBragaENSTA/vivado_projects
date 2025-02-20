----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/29/2024 08:09:38 AM
-- Design Name: 
-- Module Name: emuldemuxSM_TB - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Common.all; 


entity emuldemuxSM_TB is
end emuldemuxSM_TB;

architecture Behavioral of emuldemuxSM_TB is
    -- Constants
    constant NUM_PIXELS_TO_SEND       : integer   := 100;
    constant TOTAL_32BITWORDS_TO_SEND : integer   := 3*NUM_PIXELS_TO_SEND;
    constant INVERT_ODD_VALUES        : std_logic := '0'; --invert odd steram values => val0, not val1, val2, not val3,...
    constant CLK_PERIOD_16            : time      := 16 ns;  -- 62.5 MHz clock = 16 ns period

    --only for testbench
    constant PXLS_PER_FRAME_AUX          : integer := 20;
    
    -- Testbench signals---------------------
    --Inputs
    signal clk_sys         : std_logic := '0';
    signal aresetn         : std_logic := '0';
    -- Outputs
    signal O_CLK_SCIENCE_01  : std_logic;
    signal O_SCIENCE_CTRL_01 : std_logic;
    signal O_DEMUX_C0        : std_logic_vector(1 downto 0);
    signal O_DEMUX_C1        : std_logic_vector(1 downto 0);
    
    signal O_CLK_SCIENCE_23  : std_logic;
    signal O_SCIENCE_CTRL_23 : std_logic;
    signal O_DEMUX_C2        : std_logic_vector(1 downto 0);
    signal O_DEMUX_C3        : std_logic_vector(1 downto 0);
    signal O_finished        : std_logic;
    
    -- S_AXI Lite Slave interface signals
    signal s_axi_aclk     : std_logic := '0';
    signal s_axi_aresetn  : std_logic := '0';
    signal S_AXI_AWADDR   : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal S_AXI_AWPROT   : std_logic_vector(2 downto 0) := (others => '0');
    signal S_AXI_AWVALID  : std_logic := '0';
    signal S_AXI_AWREADY  : std_logic;
    signal S_AXI_WDATA    : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0) := (others => '0');
    signal S_AXI_WSTRB    : std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0) := (others => '0');
    signal S_AXI_WVALID   : std_logic := '0';
    signal S_AXI_WREADY   : std_logic;
    signal S_AXI_BRESP    : std_logic_vector(1 downto 0);
    signal S_AXI_BVALID   : std_logic;
    signal S_AXI_BREADY   : std_logic := '0';
    signal S_AXI_RDATA    : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal S_AXI_ARADDR   : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0) := (others => '0');
    signal S_AXI_ARPROT   : std_logic_vector(2 downto 0) := (others => '0');
    signal S_AXI_ARVALID  : std_logic := '0';
    signal S_AXI_ARREADY  : std_logic;
    signal S_AXI_RRESP    : std_logic_vector(1 downto 0);
    signal S_AXI_RVALID   : std_logic;
    signal S_AXI_RREADY   : std_logic := '0';
    
    -- S_AXIS Stream Slave interface signals
    signal S_AXIS_ACLK	  : std_logic;
    signal S_AXIS_ARESETN : std_logic;
    signal S_AXIS_TREADY  : std_logic;
    signal S_AXIS_TDATA	  : std_logic_vector(C_S_AXIS_TDATA_WIDTH-1 downto 0);
    signal S_AXIS_TSTRB	  : std_logic_vector((C_S_AXIS_TDATA_WIDTH/8)-1 downto 0);
    signal S_AXIS_TLAST	  : std_logic;
    signal S_AXIS_TVALID  : std_logic;

    -- M_AXIS Stream Master interface signals
    signal M_AXIS_ACLK	  : std_logic;
    signal M_AXIS_ARESETN : std_logic;
    signal M_AXIS_TVALID  : std_logic;
    signal M_AXIS_TDATA	  : std_logic_vector(C_M_AXIS_TDATA_WIDTH-1 downto 0);
    signal M_AXIS_TSTRB	  : std_logic_vector((C_M_AXIS_TDATA_WIDTH/8)-1 downto 0);
    signal M_AXIS_TLAST	  : std_logic;
    signal M_AXIS_TREADY  : std_logic;

begin

    -- Instantiation IP
    uut: entity work.emul_demux_SM_v1_0
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
            O_CLK_SCIENCE_01  => O_CLK_SCIENCE_01,
            O_SCIENCE_CTRL_01 => O_SCIENCE_CTRL_01,
            O_DEMUX_C0        => O_DEMUX_C0,
            O_DEMUX_C1        => O_DEMUX_C1,
            O_CLK_SCIENCE_23  => O_CLK_SCIENCE_23,
            O_SCIENCE_CTRL_23 => O_SCIENCE_CTRL_23,
            O_DEMUX_C2        => O_DEMUX_C2,
            O_DEMUX_C3        => O_DEMUX_C3,
            O_finished        => O_finished
        );

    -- Clock generation for clk_sys
    clk_sys_process: process
    begin
        clk_sys <= '0';
        wait for CLK_PERIOD_16/2;
        clk_sys <= '1';
        wait for CLK_PERIOD_16/2;
    end process;

    -- Clock generation for s_axi_clk
    s_axi_clk_process: process
    begin
        s_axi_aclk <= '0';
        wait for CLK_PERIOD_16/2;
        s_axi_aclk <= '1';
        wait for CLK_PERIOD_16/2;
    end process;

    s_axis_clk_process: process
    begin
        S_AXIS_ACLK <= '0';
        wait for CLK_PERIOD_16/2;
        S_AXIS_ACLK <= '1';
        wait for CLK_PERIOD_16/2;
    end process;
    
    m_axis_clk_process: process
    begin
        M_AXIS_ACLK <= '0';
        wait for CLK_PERIOD_16/2;
        M_AXIS_ACLK <= '1';
        wait for CLK_PERIOD_16/2;
    end process;
    
    
    
    -- Process generate and transmit data to AXI stream slave interface--------------------------------
    data_stream: process
        type data_array is array (natural range <>) of std_logic_vector(31 downto 0);
        variable data_values     : data_array(1 to TOTAL_32BITWORDS_TO_SEND); 
        variable i               : integer := 1;
        variable index_value     : std_logic_vector(31 downto 0);
        variable tlast_index     : integer := PXLS_PER_FRAME_AUX; --tlast after 48 pixels are send
        
        variable ctrl_word_01 : std_logic_vector(7 downto 0);
        variable ctrl_word_23 : std_logic_vector(7 downto 0);
        
    begin
        -- initialize data with 8-bit index
        for i in 1 to data_values'length loop
            index_value := std_logic_vector(to_unsigned(i, 8)) & 
                           std_logic_vector(to_unsigned(i, 8)) &
                           std_logic_vector(to_unsigned(i, 8)) & 
                           std_logic_vector(to_unsigned(i, 8));
            data_values(i) := index_value;
        end loop;
        
        wait for CLK_PERIOD_16/2;
        
        -- Reset sequence
        S_AXIS_ARESETN <= '0';
        wait for 10 * CLK_PERIOD_16;
        S_AXIS_ARESETN <= '1';

        wait for 40*CLK_PERIOD_16;
                
        --transmitting 1Ctrl+1Pixel01+1Pixel23
        for i in 0 to TOTAL_32BITWORDS_TO_SEND loop
            S_AXIS_TVALID <= '1';
            
            
             -- Send 1 Ctrl + 2 Data values
            if (i mod 3 = 0) then --CC words
                -- Determine control words
                if ((i/3) mod PXLS_PER_FRAME_AUX = 0) then
                    ctrl_word_01 := CTRL_WORD_FWS;
                    ctrl_word_23 := CTRL_WORD_FWS;
--                    ctrl_word_01 := CTRL_WORD_FWD;
--                    ctrl_word_23 := CTRL_WORD_FWD;
                elsif ((i/3) mod PXLS_PER_FRAME_AUX = PXLS_PER_FRAME_AUX-1) then
                    ctrl_word_01 := CTRL_WORD_LDW;
                    ctrl_word_23 := CTRL_WORD_LDW;
                else
                    ctrl_word_01 := CTRL_WORD_DTW;
                    ctrl_word_23 := CTRL_WORD_DTW;
                end if;
                S_AXIS_TDATA <= (15 downto 0 => '0') & ctrl_word_01 & ctrl_word_23;
            else
                if (INVERT_ODD_VALUES = '1' and i mod 2 = 1) then
                    S_AXIS_TDATA <= not data_values(i);
                else 
                    S_AXIS_TDATA <= data_values(i);
                end if;
            end if;       
            --Check if its last pixel of frame
            if (i mod (3*tlast_index) = 0) then
                S_AXIS_TLAST <= '1';
            else
                S_AXIS_TLAST <= '0';
            end if;
            
            -- Wait for S_AXIS_TREADY and rising edge of S_AXIS_ACLK to proceed
            wait until falling_edge(S_AXIS_ACLK) and S_AXIS_TREADY = '1';
            
            S_AXIS_TVALID <= '0';
            S_AXIS_TLAST <= '0';
            
            -- Stall check (inserting delay at halfway point to test not continuous stream of data)
            if (i = TOTAL_32BITWORDS_TO_SEND/2-1) then
                wait for ((TOTAL_32BITWORDS_TO_SEND / 2)-3)* CLK_PERIOD_16;
            end if;
        end loop;
        
        
        
        S_AXIS_TVALID <= '0';
        S_AXIS_TDATA <= x"00000000"; -- End data
        
        --wait for module to be ready for new transmission
        if (O_finished = '1') then
            wait until O_finished = '0';
        end if;
            
        wait;
    end process;
    
    
    
    ---Testbench: AXI lite control comm to start IP Module and read finish status--------------------------------
    
    tb_process: process
    begin
        -- Reset sequence
        s_axi_aresetn <= '0';
        wait for 10 * CLK_PERIOD_16;
        s_axi_aresetn <= '1';

        wait for CLK_PERIOD_16;
    
        --AXI lite: Config number of pixels for IP to process before setting its finished flag
        S_AXI_AWVALID <= '1';
        S_AXI_WVALID  <= '1';
        S_AXI_AWADDR  <= NUM_PXLSTOTRANSMIT_OFFSET;  -- base address
        S_AXI_WDATA   <= std_logic_vector(to_unsigned(NUM_PIXELS_TO_SEND/2, C_S_AXI_DATA_WIDTH));
        S_AXI_WSTRB   <= (others => '1');
        S_AXI_BREADY  <= '1';
        wait until S_AXI_AWREADY = '1' and S_AXI_WREADY = '1';
        wait until S_AXI_BVALID = '1';
        S_AXI_AWVALID <= '0';
        S_AXI_WVALID  <= '0';
        wait until S_AXI_BVALID = '0';
        S_AXI_BREADY  <= '0';   
           
        wait for 10*CLK_PERIOD_16; 
        
        --AXI lite: Config number of pixels per frame
        S_AXI_AWVALID <= '1';
        S_AXI_WVALID  <= '1';
        S_AXI_AWADDR  <= NUM_PXLSPERFRAME_OFFSET;  -- base address
        S_AXI_WDATA   <= std_logic_vector(to_unsigned(PXLS_PER_FRAME_AUX, C_S_AXI_DATA_WIDTH));
        S_AXI_WSTRB   <= (others => '1');
        S_AXI_BREADY  <= '1';
        wait until S_AXI_AWREADY = '1' and S_AXI_WREADY = '1';
        wait until S_AXI_BVALID = '1';
        S_AXI_AWVALID <= '0';
        S_AXI_WVALID  <= '0';
        wait until S_AXI_BVALID = '0';
        S_AXI_BREADY  <= '0';  
              
        wait for 10*CLK_PERIOD_16; 
        
        
--        --AXI lite read to check if writing was correctly performed
--        S_AXI_ARVALID <= '1';
--        S_AXI_RREADY <= '1';
--        S_AXI_ARADDR <= NUM_PXLSPERFRAME_OFFSET; 
--        wait until S_AXI_RVALID = '1';
--        S_AXI_ARVALID <= '0';
--        wait until S_AXI_RVALID = '0';
--        S_AXI_RREADY <= '0';
--        wait for 10*CLK_PERIOD_16; 
        
        

        --AXI lite write 1 to bit 13(Simulating GPIO button) of the S_AXI lite interface
        S_AXI_AWVALID <= '1';
        S_AXI_WVALID  <= '1';
        S_AXI_AWADDR  <= BASE_REG_OFFSET;  -- base address
        S_AXI_WDATA   <= x"00001000";
        S_AXI_WSTRB   <= (others => '1');
        S_AXI_BREADY  <= '1';
        wait until S_AXI_AWREADY = '1' and S_AXI_WREADY = '1';
        wait until S_AXI_BVALID = '1';
        S_AXI_AWVALID <= '0';
        S_AXI_WVALID  <= '0';
        wait until S_AXI_BVALID = '0';
        S_AXI_BREADY  <= '0';
        
        wait for 10*CLK_PERIOD_16;
        
        --AXI lite read to check if writing was correctly performed
        S_AXI_ARVALID <= '1';
        S_AXI_RREADY <= '1';
        S_AXI_ARADDR <= BASE_REG_OFFSET; 
        wait until S_AXI_RVALID = '1';
        S_AXI_ARVALID <= '0';
        wait until S_AXI_RVALID = '0';
        S_AXI_RREADY <= '0';

        wait for 5*CLK_PERIOD_16;
        
        --AXI lite write 0 to bit 13(Simulating GPIO button) of the S_AXI lite interface
        S_AXI_AWVALID <= '1';
        S_AXI_WVALID  <= '1';
        S_AXI_AWADDR  <= BASE_REG_OFFSET;  -- base address
        S_AXI_WDATA   <= x"00000000";
        S_AXI_BREADY  <= '1';
        wait until S_AXI_AWREADY = '1' and S_AXI_WREADY = '1';
        wait until S_AXI_BVALID = '1';
        S_AXI_AWVALID <= '0';
        S_AXI_WVALID  <= '0';
        wait until S_AXI_BVALID = '0';
        S_AXI_BREADY  <= '0';
        
        
        
        
        --Waiting for IP to process all data
        if (O_finished = '0') then
            wait until O_finished = '1';
        end if;
        
        
        --AXI lite read of debug info 
        S_AXI_ARVALID <= '1';
        S_AXI_RREADY <= '1';
        S_AXI_ARADDR <= DEBUGINFO_OFFSET; 
        wait until S_AXI_RVALID = '1';
        S_AXI_ARVALID <= '0';
        wait until S_AXI_RVALID = '0';
        S_AXI_RREADY <= '0';
        wait for 10*CLK_PERIOD_16;
        
        --AXI lite Read finished status
        S_AXI_ARVALID <= '1';
        S_AXI_RREADY <= '1';
        S_AXI_ARADDR <= STATUS_REG_OFFSET; 
        wait until S_AXI_RVALID = '1';
        S_AXI_ARVALID <= '0';
        wait until S_AXI_RVALID = '0';
        S_AXI_RREADY <= '0';
        
        
        --read logbufferby AXI writing the read pointer
        --[1]
        S_AXI_AWVALID <= '1';
        S_AXI_WVALID  <= '1';
        S_AXI_AWADDR  <= LOGBUF_RPTR_OFFSET;  -- base address
        S_AXI_WDATA   <= x"00000001";
        S_AXI_WSTRB   <= (others => '1');
        S_AXI_BREADY  <= '1';
        wait until S_AXI_AWREADY = '1' and S_AXI_WREADY = '1';
        wait until S_AXI_BVALID = '1';
        S_AXI_AWVALID <= '0';
        S_AXI_WVALID  <= '0';
        wait until S_AXI_BVALID = '0';
        S_AXI_BREADY  <= '0';
        --[2]
        S_AXI_AWVALID <= '1';
        S_AXI_WVALID  <= '1';
        S_AXI_AWADDR  <= LOGBUF_RPTR_OFFSET;  -- base address
        S_AXI_WDATA   <= x"00000002";
        S_AXI_WSTRB   <= (others => '1');
        S_AXI_BREADY  <= '1';
        wait until S_AXI_AWREADY = '1' and S_AXI_WREADY = '1';
        wait until S_AXI_BVALID = '1';
        S_AXI_AWVALID <= '0';
        S_AXI_WVALID  <= '0';
        wait until S_AXI_BVALID = '0';
        S_AXI_BREADY  <= '0';
              

--        wait for 100*CLK_PERIOD_16;
        --check: ensure button only pressed when whole AXI write sequence is done, not only the S_AXI_WDATA bus
--        S_AXI_WDATA(12) <= '1';
--        wait for 100 ns;
--        S_AXI_WDATA(12) <= '0';      
        
        wait for 10000*CLK_PERIOD_16;
        
        -- Writing 1 to bit 13(Simulating GPIO button) of the S_AXI interface
        S_AXI_AWVALID <= '1';
        S_AXI_WVALID  <= '1';
        S_AXI_AWADDR  <= BASE_REG_OFFSET;  -- base address
        S_AXI_WDATA   <= x"00001000";
        S_AXI_WSTRB   <= (others => '1');
        S_AXI_BREADY  <= '1';
        wait until S_AXI_AWREADY = '1' and S_AXI_WREADY = '1';
        wait until S_AXI_BVALID = '1';
        S_AXI_AWVALID <= '0';
        S_AXI_WVALID  <= '0';
        wait until S_AXI_BVALID = '0';
        S_AXI_BREADY  <= '0';
        
        wait for 10*CLK_PERIOD_16;
        
        -- Writing 0 to bit 13(Simulating GPIO button) of the S_AXI interface
        S_AXI_AWVALID <= '1';
        S_AXI_WVALID  <= '1';
        S_AXI_AWADDR  <= BASE_REG_OFFSET;  -- base address
        S_AXI_WDATA   <= x"00000000";
        S_AXI_BREADY  <= '1';
        wait until S_AXI_AWREADY = '1' and S_AXI_WREADY = '1';
        wait until S_AXI_BVALID = '1';
        S_AXI_AWVALID <= '0';
        S_AXI_WVALID  <= '0';
        wait until S_AXI_BVALID = '0';
        S_AXI_BREADY  <= '0';
                
        wait for 10000*CLK_PERIOD_16;

        -- Writing 1 to bit 13(Simulating GPIO button) of the S_AXI interface
        S_AXI_AWVALID <= '1';
        S_AXI_WVALID  <= '1';
        S_AXI_AWADDR  <= BASE_REG_OFFSET;  -- base address
        S_AXI_WDATA   <= x"00001000";
        S_AXI_WSTRB   <= (others => '1');
        S_AXI_BREADY  <= '1';
        wait until S_AXI_AWREADY = '1' and S_AXI_WREADY = '1';
        wait until S_AXI_BVALID = '1';
        S_AXI_AWVALID <= '0';
        S_AXI_WVALID  <= '0';
        wait until S_AXI_BVALID = '0';
        S_AXI_BREADY  <= '0';
        
        wait for 10*CLK_PERIOD_16;
        
        -- Writing 0 to bit 13(Simulating GPIO button) of the S_AXI interface
        S_AXI_AWVALID <= '1';
        S_AXI_WVALID  <= '1';
        S_AXI_AWADDR  <= BASE_REG_OFFSET;  -- base address
        S_AXI_WDATA   <= x"00000000";
        S_AXI_BREADY  <= '1';
        wait until S_AXI_AWREADY = '1' and S_AXI_WREADY = '1';
        wait until S_AXI_BVALID = '1';
        S_AXI_AWVALID <= '0';
        S_AXI_WVALID  <= '0';
        wait until S_AXI_BVALID = '0';
        S_AXI_BREADY  <= '0';
        
        --Waiting for IP to process all data
        if (O_finished = '0') then
            wait until O_finished = '1';
        end if;
        
        --AXI lite read of debug info 
        S_AXI_ARVALID <= '1';
        S_AXI_RREADY <= '1';
        S_AXI_ARADDR <= DEBUGINFO_OFFSET; 
        wait until S_AXI_RVALID = '1';
        S_AXI_ARVALID <= '0';
        wait until S_AXI_RVALID = '0';
        S_AXI_RREADY <= '0';
        wait for 10*CLK_PERIOD_16;
        
        wait for 40000 ns;
        
        -- End the transaction
        wait;
    end process;
    
    
    --simulate DMA loopback read transaction
    test_axi_master: process
    begin
    
        -- Reset sequence
        wait for CLK_PERIOD_16/2;
        M_AXIS_ARESETN <= '0';
        wait for 10 * CLK_PERIOD_16;
        M_AXIS_ARESETN <= '1';
        
        wait for CLK_PERIOD_16;
        M_AXIS_TREADY <= '1'; --it should always be read to receive data
                              -- since we dont buffer data
        --wait for 70*CLK_PERIOD_16;
        --M_AXIS_TREADY <= '0';
        wait;
    end process;

end Behavioral;
