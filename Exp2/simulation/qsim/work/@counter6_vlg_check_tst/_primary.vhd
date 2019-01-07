library verilog;
use verilog.vl_types.all;
entity Counter6_vlg_check_tst is
    port(
        SG_0            : in     vl_logic_vector(6 downto 0);
        SG_1            : in     vl_logic_vector(6 downto 0);
        SG_2            : in     vl_logic_vector(6 downto 0);
        d               : in     vl_logic;
        q               : in     vl_logic_vector(11 downto 0);
        sampler_rx      : in     vl_logic
    );
end Counter6_vlg_check_tst;
