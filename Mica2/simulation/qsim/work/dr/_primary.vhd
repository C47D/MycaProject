library verilog;
use verilog.vl_types.all;
entity dr is
    port(
        b               : in     vl_logic_vector(7 downto 0);
        ci              : in     vl_logic;
        S               : out    vl_logic_vector(7 downto 0)
    );
end dr;
