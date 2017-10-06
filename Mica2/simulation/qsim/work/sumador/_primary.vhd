library verilog;
use verilog.vl_types.all;
entity sumador is
    port(
        pc              : in     vl_logic_vector(7 downto 0);
        ci              : in     vl_logic;
        sum             : out    vl_logic_vector(7 downto 0)
    );
end sumador;
