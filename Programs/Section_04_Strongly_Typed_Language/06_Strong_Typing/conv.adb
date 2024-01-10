with Ada.text_IO; use Ada.Text_IO; 

procedure Conv is 
    type Meters is new Float; 
    type Miles is new Float;
    Dist_Imperial : Miles; 
    Dist_Metric : constant Meters := 1000.00; 
begin
    Dist_Imperial := Miles(Dist_Metric) * 621.371e-6; 
    --                ^ Type conversion, from Meters to Miles (like in C and C++)

    Put_Line(Miles'Image(Dist_Imperial)); 
end Conv;