library verilog;
use verilog.vl_types.all;
entity Quanjia_vlg_sample_tst is
    port(
        Ai              : in     vl_logic;
        Bi              : in     vl_logic;
        Ci              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Quanjia_vlg_sample_tst;
