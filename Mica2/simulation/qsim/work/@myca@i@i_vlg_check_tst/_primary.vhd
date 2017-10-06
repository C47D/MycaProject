library verilog;
use verilog.vl_types.all;
entity MycaII_vlg_check_tst is
    port(
        PC              : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end MycaII_vlg_check_tst;
