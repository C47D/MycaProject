library verilog;
use verilog.vl_types.all;
entity mux_1 is
    port(
        s               : in     vl_logic_vector(1 downto 0);
        im0             : in     vl_logic_vector(7 downto 0);
        im1             : in     vl_logic_vector(7 downto 0);
        im2             : in     vl_logic_vector(7 downto 0);
        z               : out    vl_logic_vector(7 downto 0)
    );
end mux_1;
