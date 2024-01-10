with Ada.Text_IO; use Ada.Text_IO;

procedure Greet is 
    type Days is (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday); 
    type Weekend_Days is new Days range Saturday .. Sunday;
    type Working_Days is new Days range Monday .. Friday; 
begin
    null;
end Greet; 

-- NOTE:
-- Days is an enum type with all days of the week; 
-- Weekend_Days is a derived type of the Days, which involves only Saturday and Monday.
-- Working_Days is a derived type of the Days, which involves days from Monday to Friday.