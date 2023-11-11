with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_Io; use Ada. Integer_Text_IO;

procedure Check_Positive is
    N: Integer;
begin
    Put ("Enger an integer value: ");
    Get (N);
    New_Line;
    Put (N'Img);

    declare
        S : constant String := ( if N > 0 then " is a positive number" else " is not a positive number");
    begin
        Put_Line(S);
    end;
end Check_Positive;