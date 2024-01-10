with Ada.Text_IO; use Ada.text_IO;

procedure Integer_Type_Example is 
    -- Declare a signed integer type and give the bounds
    type My_Int is range -1 .. 20; -- low bound is 1, and high bound is 20

    -- Like variables, type declarations can only appear in declarative regions.
begin
    for I in My_Int loop
        Put_Line(My_Int'Image(I)); 
    end loop;
end Integer_Type_Example;