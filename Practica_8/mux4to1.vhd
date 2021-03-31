library ieee; use ieee.std_logic_1164.all;

entity mux4to1 is
	port(m_in: in std_logic_vector(3 downto 0);
	     sel: in std_logic_vector(1 downto 0);
		  m_out: out std_logic);
end mux4to1;

architecture bhv of mux4to1 is
begin
	process(m_in, sel) is begin
		case sel is
			when "00" => m_out <= m_in(0);
			when "01" => m_out <= m_in(1);
			when "10" => m_out <= m_in(2);
			when "11" => m_out <= m_in(3);
			when others => m_out <= '0';
		end case;
	end process;
end bhv;

-----------------------------------------------------------------

library ieee; use ieee.std_logic_1164.all;
package mux4to1_package is
	component mux4to1
		port(m_in: in std_logic_vector(3 downto 0);
			  sel: in std_logic_vector(1 downto 0);
			  m_out: out std_logic);
	end component;
end mux4to1_package;	