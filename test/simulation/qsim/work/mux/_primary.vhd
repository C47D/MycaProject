library verilog;
use verilog.vl_types.all;
entity mux is
    port(
        s               : in     vl_logic_vector(2 downto 0);
        i               : in     vl_logic_vector(5 downto 0);
        z               : out    vl_logic
    );
end mux;
