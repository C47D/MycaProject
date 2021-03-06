library verilog;
use verilog.vl_types.all;
entity um1bb is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        ck              : in     vl_logic;
        M               : in     vl_logic;
        SL              : in     vl_logic;
        SG              : in     vl_logic;
        LS              : in     vl_logic;
        LC              : in     vl_logic;
        SV              : out    vl_logic;
        CL              : out    vl_logic;
        CN              : out    vl_logic;
        DE              : out    vl_logic;
        CLK             : out    vl_logic;
        SCP             : out    vl_logic_vector(3 downto 0)
    );
end um1bb;
