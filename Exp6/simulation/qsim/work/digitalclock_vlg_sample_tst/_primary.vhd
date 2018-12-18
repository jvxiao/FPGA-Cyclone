library verilog;
use verilog.vl_types.all;
entity digitalclock_vlg_sample_tst is
    port(
        ad_hr           : in     vl_logic;
        ad_min          : in     vl_logic;
        ad_sec          : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end digitalclock_vlg_sample_tst;
