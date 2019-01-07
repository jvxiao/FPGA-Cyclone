library verilog;
use verilog.vl_types.all;
entity Counter6 is
    port(
        clk             : in     vl_logic;
        m               : in     vl_logic;
        en              : in     vl_logic;
        rst             : in     vl_logic;
        SG_0            : out    vl_logic_vector(6 downto 0);
        SG_1            : out    vl_logic_vector(6 downto 0);
        SG_2            : out    vl_logic_vector(6 downto 0);
        d               : out    vl_logic;
        q               : out    vl_logic_vector(11 downto 0)
    );
end Counter6;
