library verilog;
use verilog.vl_types.all;
entity pc is
    port(
        ck              : in     vl_logic;
        c               : in     vl_logic;
        l               : in     vl_logic;
        i               : in     vl_logic_vector(7 downto 0);
        Q               : out    vl_logic_vector(7 downto 0)
    );
end pc;
