library verilog;
use verilog.vl_types.all;
entity digitalclock_vlg_check_tst is
    port(
        Hr_g            : in     vl_logic_vector(6 downto 0);
        Hr_s            : in     vl_logic_vector(6 downto 0);
        Min_g           : in     vl_logic_vector(6 downto 0);
        Min_s           : in     vl_logic_vector(6 downto 0);
        Sec_g           : in     vl_logic_vector(6 downto 0);
        Sec_s           : in     vl_logic_vector(6 downto 0);
        cnt_hr          : in     vl_logic_vector(7 downto 0);
        cnt_min         : in     vl_logic_vector(7 downto 0);
        cnt_sec         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end digitalclock_vlg_check_tst;
