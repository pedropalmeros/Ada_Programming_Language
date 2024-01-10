with Ada.Text_IO; use Ada.Text_IO; 

procedure Floating_Point_Range_Exception is 
    type T_Norm is new Float range -1.0 .. 1.0; 
    A : T_Norm; 
begin  
    A := 2.0;
    Put_Line("The vlue of A is " & T_Norm'Image(A)); 
end Floating_Point_Range_Exception;

-- NOTE: This will not compile since the value of A is out of range. 