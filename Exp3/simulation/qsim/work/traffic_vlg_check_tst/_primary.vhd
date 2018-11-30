library verilog;
use verilog.vl_types.all;
entity traffic_vlg_check_tst is
    port(
        CG              : in     vl_logic;
        CR              : in     vl_logic;
        CY              : in     vl_logic;
        MG              : in     vl_logic;
        MR              : in     vl_logic;
        MY              : in     vl_logic;
        SG0             : in     vl_logic_vector(6 downto 0);
        SG1             : in     vl_logic_vector(6 downto 0);
        SG4             : in     vl_logic_vector(6 downto 0);
        SG5             : in     vl_logic_vector(6 downto 0);
        state           : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end traffic_vlg_check_tst;
