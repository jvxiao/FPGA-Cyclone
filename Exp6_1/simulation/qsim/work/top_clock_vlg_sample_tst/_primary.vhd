library verilog;
use verilog.vl_types.all;
entity top_clock_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        key3            : in     vl_logic;
        key_b           : in     vl_logic_vector(1 downto 0);
        key_in          : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end top_clock_vlg_sample_tst;
