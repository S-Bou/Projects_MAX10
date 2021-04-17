-- example of test bench to test the ls194
library ieee;
use ieee.std_logic_1164.all;

entity LS194_tb is
end LS194_tb;

architecture tb of LS194_tb is component ls194 is
port(
	clk,mr_n,s0,s1,dsr,dsl_ser	: in std_logic;
	p				: in  std_logic_vector(3 downto 0);
	q				: out std_logic_vector(3 downto 0));
end component;

-- internal signals
signal clk_tb: std_logic:='1';
signal s0_tb, s1_tb, mr_tb_n, dsr_tb, dsl_tb: std_logic:= '0';
signal p_tb, q_tb : std_logic_vector (3 downto 0);

-- constant declarations
constant clk_period: time := 10 ns;

begin
-- component instantiation
uut: ls194 port map(
clk  => clk_tb,
mr_n => mr_tb_n, 
s0   => s0_tb,
s1   => s1_tb,
dsr  => dsr_tb, 
dsl_ser  => dsl_tb,
p    => p_tb,
q    => q_tb);

-- clock generation
clk_tb <= not clk_tb after clk_period/2;

main_proc: process
begin
	mr_tb_n <= '0';
	wait for 20 ns;
-- check_init_proc wait for 10 ns;
	assert q_tb = "0000"
		report "Initialization Error"
			severity ERROR;
	wait for 20 ns;
	mr_tb_n <= '1';

	-- check synchronous load
	s0_tb <='1';
	s1_tb <='1';
	p_tb  <= "0110";
	wait for clk_period;
	
	--wait until falling edge clk_tb
	wait until clk_tb ='0';
	assert q_tb = "0110"
		report" Load Error "
			severity ERROR;
			
	--check shift left
	s0_tb <='0';
	--wait until falling edge clk_tb
	wait until clk_tb ='0';
	assert q_tb = "1100"
		report"Error: Shift left Failed "
			severity ERROR;

	-- three more shift left
	for i in 0 to 2 loop
		if i = 1 then
			dsl_tb <='0';
		else
			dsl_tb <='1';
		end if;
	wait until clk_tb ='1';
	end loop;

	assert q_tb = "0101"
		report "Error: serial left shift failed "
			severity ERROR;
	wait;
end process;

end tb;

