library verilog;
use verilog.vl_types.all;
entity um1b is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        ck              : in     vl_logic;
        m               : in     vl_logic;
        sl              : in     vl_logic;
        sg              : in     vl_logic;
        ls              : in     vl_logic;
        lc              : in     vl_logic;
        sv              : out    vl_logic;
        cl              : out    vl_logic;
        cn              : out    vl_logic;
        de              : out    vl_logic;
        clk             : out    vl_logic;
        scp             : out    vl_logic_vector(3 downto 0)
    );
end um1b;
