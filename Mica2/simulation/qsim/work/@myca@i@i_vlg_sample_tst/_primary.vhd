library verilog;
use verilog.vl_types.all;
entity MycaII_vlg_sample_tst is
    port(
        DIRB            : in     vl_logic_vector(7 downto 0);
        DIRI            : in     vl_logic_vector(7 downto 0);
        ck              : in     vl_logic;
        opc             : in     vl_logic_vector(2 downto 0);
        x               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MycaII_vlg_sample_tst;
