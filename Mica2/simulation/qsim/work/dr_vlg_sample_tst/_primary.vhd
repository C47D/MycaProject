library verilog;
use verilog.vl_types.all;
entity dr_vlg_sample_tst is
    port(
        b               : in     vl_logic_vector(7 downto 0);
        ci              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end dr_vlg_sample_tst;
