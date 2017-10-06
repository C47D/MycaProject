library verilog;
use verilog.vl_types.all;
entity mux_vlg_sample_tst is
    port(
        i               : in     vl_logic_vector(5 downto 0);
        s               : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end mux_vlg_sample_tst;
