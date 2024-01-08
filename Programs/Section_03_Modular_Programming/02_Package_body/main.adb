with Ada.Text_IO; use Ada.Text_IO;
with Operations;

procedure Main is
    use Operations;
    I : Integer := 0;
    R : Integer;

    procedure Display_Udate_Values is
        Incr : constant Integer := Get_Increment_Value;
    begin  
        Put_Line(Integer'Image(I) & " incremented by "
                 & Integer'Image(Incr) & " is " & Integer'Image(R));
        I := R;
    end Display_Udate_Values;
begin 
    R := Increment_By(I);
    Display_Udate_Values;
    R := Increment_By(I);
    Display_Udate_Values;

    R := Increment_By(I,5);
    Display_Udate_Values;
    R := Increment_By(I);
    Display_Udate_Values;

    R := Increment_By(I, 10);
    Display_Udate_Values;
    R := Increment_By(I);
    Display_Udate_Values;
end Main;