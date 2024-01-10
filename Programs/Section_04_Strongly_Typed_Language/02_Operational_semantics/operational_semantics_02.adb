with Ada.Text_IO; use Ada.Text_IO; 

procedure Main is 
    type My_Int is range 1 .. 20;
    A : My_Int := 12; 
    B : My_Int := 20;
    M : My_Int := (A + B)/2; 
    -- No overflow here, overflow checks
    -- are done at pecific boundaries
    -- The M value will be ceil into an Integer within the range. 
begin 
    for I in 1 .. M loop 
        Put_Line("Hello, World!"); 
    end loop;
    -- Loop body executed 13 times
end Main;