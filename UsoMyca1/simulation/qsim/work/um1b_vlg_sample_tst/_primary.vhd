library verilog;
use verilog.vl_types.all;
entity um1b_vlg_sample_tst is
    port(
        ck              : in     vl_logic;
        lc              : in     vl_logic;
        ls              : in     vl_logic;
        m               : in     vl_logic;
        sg              : in     vl_logic;
        sl              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end um1b_vlg_sample_tst;
