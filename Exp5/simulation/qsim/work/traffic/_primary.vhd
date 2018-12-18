library verilog;
use verilog.vl_types.all;
entity traffic is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        S               : in     vl_logic;
        state           : out    vl_logic_vector(1 downto 0);
        main_led        : out    vl_logic_vector(2 downto 0);
        country_led     : out    vl_logic_vector(2 downto 0);
        SEG_s           : out    vl_logic_vector(6 downto 0);
        SEG_g           : out    vl_logic_vector(6 downto 0);
        cnt             : out    vl_logic_vector(7 downto 0)
    );
end traffic;
