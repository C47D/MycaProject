library verilog;
use verilog.vl_types.all;
entity mrm_vlg_check_tst is
    port(
        D               : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end mrm_vlg_check_tst;
