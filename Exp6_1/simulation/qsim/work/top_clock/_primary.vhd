library verilog;
use verilog.vl_types.all;
entity top_clock is
    port(
        clk             : in     vl_logic;
        key_in          : in     vl_logic_vector(3 downto 0);
        key_b           : in     vl_logic_vector(1 downto 0);
        key3            : in     vl_logic;
        SG0             : out    vl_logic_vector(6 downto 0);
        SG1             : out    vl_logic_vector(6 downto 0);
        SG2             : out    vl_logic_vector(6 downto 0);
        SG3             : out    vl_logic_vector(6 downto 0);
        SG4             : out    vl_logic_vector(6 downto 0);
        SG5             : out    vl_logic_vector(6 downto 0);
        led             : out    vl_logic;
        clock_hour      : out    vl_logic_vector(7 downto 0);
        clock_minute    : out    vl_logic_vector(7 downto 0);
        clock_second    : out    vl_logic_vector(7 downto 0)
    );
end top_clock;
