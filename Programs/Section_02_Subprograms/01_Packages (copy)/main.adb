with Ada.Text_IO; use Ada.Text_IO;
with Week; use Week;
-- References the Week package,
-- and ads a dependency from Main to Week

procedure Main is 
begin  
    Put_Line("First day of the week is " & Mon);
end Main;