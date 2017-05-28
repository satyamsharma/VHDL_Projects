library verilog;
use verilog.vl_types.all;
entity multiplier is
    port(
        output          : out    vl_logic_vector(7 downto 0);
        a_in            : in     vl_logic_vector(3 downto 0);
        b_in            : in     vl_logic_vector(3 downto 0)
    );
end multiplier;
