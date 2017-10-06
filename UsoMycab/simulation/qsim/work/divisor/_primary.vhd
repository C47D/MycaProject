library verilog;
use verilog.vl_types.all;
entity divisor is
    port(
        ck              : in     vl_logic;
        ck1s            : out    vl_logic
    );
end divisor;
