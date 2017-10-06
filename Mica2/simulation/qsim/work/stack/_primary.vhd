library verilog;
use verilog.vl_types.all;
entity stack is
    port(
        ck              : in     vl_logic;
        i               : in     vl_logic_vector(7 downto 0);
        s               : in     vl_logic_vector(1 downto 0);
        T               : out    vl_logic_vector(7 downto 0)
    );
end stack;
