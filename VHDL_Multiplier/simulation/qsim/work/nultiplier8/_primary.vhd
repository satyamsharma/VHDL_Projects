library verilog;
use verilog.vl_types.all;
entity nultiplier8 is
    port(
        output          : out    vl_logic_vector(15 downto 0);
        a_in            : in     vl_logic_vector(7 downto 0);
        b_in            : in     vl_logic_vector(7 downto 0)
    );
end nultiplier8;
