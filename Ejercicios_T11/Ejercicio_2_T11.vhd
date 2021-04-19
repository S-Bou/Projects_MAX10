library ieee; use ieee.std_logic_1164.all;

entity seqdetect_fsm is
	port(
		  A: in std_logic;
		  clk: in std_logic;
		  reset: in std_logic;
	      z: out std_logic
		 );
end seqdetect_fsm;
--------------------------------------------------------------------------
architecture bhv of seqdetect_fsm is
	type estados is (S0, S1, S2, S3, S4);
	signal estado, sig_estado: estados;
begin
--------------------------------------------------------------------------	
	SINCRONO: process(clk) is
	begin
		if (reset = '0') then
			estado <= S0;
		elsif (clk'event and clk = '1') then
			estado <= sig_estado;
		end if;
	end  process SINCRONO;
--------------------------------------------------------------------------	
	Detector: process(estado, A) is
	begin
		case estado is
			when S0 =>
				z <= '0';        -- MOORE salidas en estados no en 'if'
				if A = '1' then
					sig_estado <= S1;
				end if;
			when S1 =>
				z <= '0';           
				if A = '0' then
					sig_estado <= S2;				
				end if;			
			when S2 =>
				z <= '0';      
				if A = '1' then
					sig_estado <= S3;
				else
				 	sig_estado <= S0;
				end if;			
			when S3 =>
				z <= '0';           
				if A = '0' then
					sig_estado <= S2;
				else 
					sig_estado <= S4;
				end if;	
			when S4 =>
				z <= '1';           
				if A = '0' then
					sig_estado <= S2;
				else 
					sig_estado <= S1;
				end if;	
			when others =>
            	sig_estado <= S0;			
		end case;
	end process Detector;
--------------------------------------------------------------------------	
end bhv;