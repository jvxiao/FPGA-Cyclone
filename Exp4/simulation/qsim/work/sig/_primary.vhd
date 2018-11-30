library verilog;
use verilog.vl_types.all;
entity sig is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        load            : in     vl_logic;
        seq_last6       : out    vl_logic_vector(5 downto 0);
        led             : out    vl_logic;
        state           : out    vl_logic_vector(2 downto 0)
    );
end sig;
