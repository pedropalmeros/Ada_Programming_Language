-- Ada allows the user to specify the precision for a floating-point type, expressed in terms of decimal digits.
-- Operations on these custom types will then have at least the specified precision. The syntax for a simple
-- floating-point type declaration is
-- 
-- type T is digits <number_of_decimal_digits>; 

with Ada.Text_IO; use Ada.Text_IO;

procedure Custom_Floating_Types is 
    type T3 is digits 3;
    type T15 is digits 15; 
    type T18 is digits 18; 
begin 
    Put_Line("T3 requires" & Integer'Image (T3'Size) & " bits"); 
    Put_Line("T15 requires " & Integer'Image (T15'Size) & " bits");
    Put_Line("T18 requires " & Integer'Image (T18'Size) & " bits"); 
end Custom_Floating_Types;