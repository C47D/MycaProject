library verilog;
use verilog.vl_types.all;
entity myca1_vlg_sample_tst is
    port(
        ck              : in     vl_logic;
        dir             : in     vl_logic_vector(3 downto 0);
        opc             : in     vl_logic_vector(2 downto 0);
        x               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end myca1_vlg_sample_tst;
