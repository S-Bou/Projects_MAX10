----------------------------------------------------------
--		Library uart_comps			--
--							--
--		Creation date: 2007.08.16		--
----------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

package uart_comps is
-------------------------------------------------	
component timing is
	generic (F : natural := 50000;	
				min_baud : natural :=  1200); 
	port (
      CLK :	in std_logic;
      RST : 	in std_logic;
      baud : 	in std_logic_vector(2 downto 0);
      ClrDiv : in std_logic;
      Top16 : 	buffer std_logic;
      TopTx :	out std_logic;
      TopRx : 	out std_logic);
end component;
-----------------------------------------------------
component transmit is
   generic (NDBits : natural := 8);
   port (CLK 		: in std_logic;
			RST 		: in std_logic;
			TopTx 	: in std_logic;
			StartTx 	: in std_logic;
			Din  		: in std_logic_vector (NDBits-1 downto 0);
			Tx 		: out std_logic;
			TxBusy 	: out std_logic );

end component;
-------------------------------------------------------
component receive is
   generic (NDBits : natural := 8);
   port (CLK	 	: in std_logic;
			RST 		: in std_logic;
			Rx 		: in std_logic;
			Dout 		: out std_logic_vector (NDBits-1 downto 0);
			RxErr 	: out std_logic;
			RxRdy 	: out std_logic;
			Top16 	: in std_logic;
			ClrDiv 	: out std_logic;
			TopRx 	: in std_logic);
end component;
------------------------------------------------------------
end;
