with Ada.Text_IO; use Ada.Text_IO; 

procedure Illegal_Example is
    -- Declare two different floating point types
    type Meters is new Float; 
    type Miles is new Float; 
    
    Dist_Imperial : Miles; 

    -- Declare a constant
    Dist_Metric : constant Meters := 1000.0;
begin   
    -- Not correct: types mismatch
    Dist_Imperial := Dist_Metric * 621.371e-6; 
    Put_Line(Miles'Image(Dist_Imperial)); 
end Illegal_Example;

-- NOTE: this will not compile since the types does not match.
-- In line 14 there is a mix of types of Meters and Miles