library verilog;
use verilog.vl_types.all;
entity myca1 is
    port(
        pc              : out    vl_logic_vector(3 downto 0);
        opc             : in     vl_logic_vector(2 downto 0);
        x               : in     vl_logic;
        dir             : in     vl_logic_vector(3 downto 0);
        ck              : in     vl_logic
    );
end myca1;
