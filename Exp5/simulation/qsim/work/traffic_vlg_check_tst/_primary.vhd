library verilog;
use verilog.vl_types.all;
entity traffic_vlg_check_tst is
    port(
        SEG_g           : in     vl_logic_vector(6 downto 0);
        SEG_s           : in     vl_logic_vector(6 downto 0);
        cnt             : in     vl_logic_vector(7 downto 0);
        country_led     : in     vl_logic_vector(2 downto 0);
        main_led        : in     vl_logic_vector(2 downto 0);
        state           : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end traffic_vlg_check_tst;
