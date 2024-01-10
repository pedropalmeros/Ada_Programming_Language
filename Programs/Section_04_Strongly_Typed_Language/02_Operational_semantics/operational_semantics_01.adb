with Ada.Text_IO; use Ada.Text_IO; 

procedure Main is 
    A : Integer := Integer'Last; 
    B : Integer ;
begin
    B := A + 5; 
    -- This will send an error since the operation will overflow, 
    -- since A is the biggest value that an Integer can handle, then,
    -- if a value is added it might be out of range. 
end Main;