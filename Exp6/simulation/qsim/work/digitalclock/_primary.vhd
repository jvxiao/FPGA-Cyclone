library verilog;
use verilog.vl_types.all;
entity digitalclock is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        ad_hr           : in     vl_logic;
        ad_min          : in     vl_logic;
        ad_sec          : in     vl_logic;
        Hr_s            : out    vl_logic_vector(6 downto 0);
        Hr_g            : out    vl_logic_vector(6 downto 0);
        Min_s           : out    vl_logic_vector(6 downto 0);
        Min_g           : out    vl_logic_vector(6 downto 0);
        Sec_s           : out    vl_logic_vector(6 downto 0);
        Sec_g           : out    vl_logic_vector(6 downto 0);
        cnt_sec         : out    vl_logic_vector(7 downto 0);
        cnt_min         : out    vl_logic_vector(7 downto 0);
        cnt_hr          : out    vl_logic_vector(7 downto 0)
    );
end digitalclock;
