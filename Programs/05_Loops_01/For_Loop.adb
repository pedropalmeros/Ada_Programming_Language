with Ada.Text_IO; use Ada.Text_IO;

procedure For_Loop is 
begin
    for I in 1..5 loop
        -- Put_Line is a procedure call
        Put_Line("Hello, World" & Integer'Image(I));
    
        --       Procedure Parameter
    end loop;

end For_Loop;
