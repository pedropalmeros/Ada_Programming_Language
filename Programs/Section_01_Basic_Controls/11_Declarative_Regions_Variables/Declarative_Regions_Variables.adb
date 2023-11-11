with Ada.Text_IO; use Ada.Text_IO;

procedure Main is 
    procedure nested is
    begin
        Put_Line("Hello World");
    end nested;
begin
    Nested; --| CALL TO NESTED
end Main;