library verilog;
use verilog.vl_types.all;
entity usomycaII_vlg_check_tst is
    port(
        CL              : in     vl_logic;
        CN              : in     vl_logic;
        DE              : in     vl_logic;
        SCP             : in     vl_logic_vector(7 downto 0);
        SV              : in     vl_logic;
        clk             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end usomycaII_vlg_check_tst;
