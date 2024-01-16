with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure unbounded_string is 
    Temp1 : Ada.Strings.Unbounded.Unbounded_String := To_Unbounded_String("Hello, "); 
    Temp2 : Ada.Strings.Unbounded.Unbounded_String := To_Unbounded_String("world!");
begin   
    Put_Line(To_String(Temp1));

    Append(Temp1,Temp2);
    Put_Line(To_String(Temp1));

    Append(Temp1, " From Ada!"); 
    Put_Line("Temp1 length: " & Natural'Image(Length(Temp1)));
    Put_Line("Temp2 length: " & Natural'Image(Length(Temp2)));
end unbounded_string;