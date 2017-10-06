library verilog;
use verilog.vl_types.all;
entity um1b_vlg_check_tst is
    port(
        cl              : in     vl_logic;
        clk             : in     vl_logic;
        cn              : in     vl_logic;
        de              : in     vl_logic;
        scp             : in     vl_logic_vector(3 downto 0);
        sv              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end um1b_vlg_check_tst;
