with Ada.Text_IO; use Ada.Text_IO; 

procedure Floating_Point_Range is 
    type T_Norm is new Float range -1.0 .. 1.0; 
    A : T_Norm;
begin  
    A := 1.0; 
    Put_Line("the value of A is " & T_Norm'Image(A));
end Floating_Point_Range;
