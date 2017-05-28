library verilog;
use verilog.vl_types.all;
entity nultiplier8_vlg_sample_tst is
    port(
        a_in            : in     vl_logic_vector(7 downto 0);
        b_in            : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end nultiplier8_vlg_sample_tst;
