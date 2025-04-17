library verilog;
use verilog.vl_types.all;
entity dmx18 is
    port(
        \in\            : in     vl_logic;
        adr             : in     vl_logic_vector(2 downto 0);
        EN              : in     vl_logic;
        \out\           : out    vl_logic_vector(7 downto 0)
    );
end dmx18;
