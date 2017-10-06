library verilog;
use verilog.vl_types.all;
entity mux_1_vlg_sample_tst is
    port(
        im0             : in     vl_logic_vector(7 downto 0);
        im1             : in     vl_logic_vector(7 downto 0);
        im2             : in     vl_logic_vector(7 downto 0);
        s               : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end mux_1_vlg_sample_tst;
