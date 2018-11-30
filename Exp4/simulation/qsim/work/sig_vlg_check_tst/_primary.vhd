library verilog;
use verilog.vl_types.all;
entity sig_vlg_check_tst is
    port(
        led             : in     vl_logic;
        seq_last6       : in     vl_logic_vector(5 downto 0);
        state           : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end sig_vlg_check_tst;
