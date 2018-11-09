library verilog;
use verilog.vl_types.all;
entity Quanjia is
    port(
        si              : out    vl_logic;
        Ai              : in     vl_logic;
        Bi              : in     vl_logic;
        Ci              : in     vl_logic;
        ci1             : out    vl_logic
    );
end Quanjia;
