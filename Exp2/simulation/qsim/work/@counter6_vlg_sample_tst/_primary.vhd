library verilog;
use verilog.vl_types.all;
entity Counter6_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        en              : in     vl_logic;
        m               : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Counter6_vlg_sample_tst;
