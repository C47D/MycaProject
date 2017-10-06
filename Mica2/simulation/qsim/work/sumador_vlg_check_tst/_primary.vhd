library verilog;
use verilog.vl_types.all;
entity sumador_vlg_check_tst is
    port(
        sum             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end sumador_vlg_check_tst;
