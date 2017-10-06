library verilog;
use verilog.vl_types.all;
entity pc_vlg_sample_tst is
    port(
        c               : in     vl_logic;
        ck              : in     vl_logic;
        i               : in     vl_logic_vector(7 downto 0);
        l               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end pc_vlg_sample_tst;
