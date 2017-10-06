library verilog;
use verilog.vl_types.all;
entity stack_vlg_sample_tst is
    port(
        ck              : in     vl_logic;
        i               : in     vl_logic_vector(7 downto 0);
        s               : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end stack_vlg_sample_tst;
