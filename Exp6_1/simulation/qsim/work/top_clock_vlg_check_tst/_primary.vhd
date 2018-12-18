library verilog;
use verilog.vl_types.all;
entity top_clock_vlg_check_tst is
    port(
        SG0             : in     vl_logic_vector(6 downto 0);
        SG1             : in     vl_logic_vector(6 downto 0);
        SG2             : in     vl_logic_vector(6 downto 0);
        SG3             : in     vl_logic_vector(6 downto 0);
        SG4             : in     vl_logic_vector(6 downto 0);
        SG5             : in     vl_logic_vector(6 downto 0);
        led             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end top_clock_vlg_check_tst;
