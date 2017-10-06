library verilog;
use verilog.vl_types.all;
entity um1bb_vlg_check_tst is
    port(
        CL              : in     vl_logic;
        CLK             : in     vl_logic;
        CN              : in     vl_logic;
        DE              : in     vl_logic;
        SCP             : in     vl_logic_vector(3 downto 0);
        SV              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end um1bb_vlg_check_tst;
