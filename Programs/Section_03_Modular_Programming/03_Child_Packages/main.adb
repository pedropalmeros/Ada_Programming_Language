with Ada.Text_IO; use Ada.Text_IO; 
with Week.Child; 
procedure Main is
begin
    Put_Line("First day of the week is: " & Week.Child.Get_First_Of_Week);
end Main;