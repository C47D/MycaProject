library verilog;
use verilog.vl_types.all;
entity myca1_vlg_check_tst is
    port(
        pc              : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end myca1_vlg_check_tst;
