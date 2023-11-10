with Ada.Text_IO; use Ada.Text_IO;

procedure Bare_Loop is 
    -- Varialbe declaration: 
    I : Integer := 1;
begin
    loop 
        Put_Line("Hello World!" & Integer'Image(I));

        exit when I = 5; 

        I:= I + 1;
    end loop;
end Bare_Loop;
