with Ada.Text_IO; use Ada.Text_IO; 

procedure Main is 
    type Mod_Int is mod 2**5; --range is 0 to 31 (32 values)

    A : constant Mod_Int := 20; 
    B : constant Mod_Int := 15; 

    M : constant Mod_Int := A + B; 
    -- No overflow here, 
    -- M = (15 + 20) MOD 32 = 3
begin   
    for I in 1 .. M loop
        Put_Line("Hello, World"); 
    end loop;
end Main;