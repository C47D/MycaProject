library verilog;
use verilog.vl_types.all;
entity MycaII is
    port(
        ck              : in     vl_logic;
        x               : in     vl_logic;
        opc             : in     vl_logic_vector(2 downto 0);
        DIRB            : in     vl_logic_vector(7 downto 0);
        DIRI            : in     vl_logic_vector(7 downto 0);
        PC              : out    vl_logic_vector(7 downto 0);
        clk             : out    vl_logic
    );
end MycaII;
