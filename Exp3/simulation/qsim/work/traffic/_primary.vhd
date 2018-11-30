library verilog;
use verilog.vl_types.all;
entity traffic is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        s               : in     vl_logic;
        MR              : out    vl_logic;
        MY              : out    vl_logic;
        MG              : out    vl_logic;
        CR              : out    vl_logic;
        CY              : out    vl_logic;
        CG              : out    vl_logic;
        SG0             : out    vl_logic_vector(6 downto 0);
        SG1             : out    vl_logic_vector(6 downto 0);
        SG4             : out    vl_logic_vector(6 downto 0);
        SG5             : out    vl_logic_vector(6 downto 0);
        state           : out    vl_logic_vector(2 downto 0)
    );
end traffic;
