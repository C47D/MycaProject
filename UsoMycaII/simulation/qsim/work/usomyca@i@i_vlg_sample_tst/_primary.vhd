library verilog;
use verilog.vl_types.all;
entity usomycaII_vlg_sample_tst is
    port(
        LC              : in     vl_logic;
        LS              : in     vl_logic;
        M               : in     vl_logic;
        SE              : in     vl_logic;
        SG              : in     vl_logic;
        SL              : in     vl_logic;
        ck              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end usomycaII_vlg_sample_tst;
