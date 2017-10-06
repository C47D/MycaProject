library verilog;
use verilog.vl_types.all;
entity mux_1_vlg_check_tst is
    port(
        z               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end mux_1_vlg_check_tst;
