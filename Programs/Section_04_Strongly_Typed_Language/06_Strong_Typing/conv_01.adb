with Ada.text_IO; use Ada.Text_IO; 

procedure Conv_01 is 
    type Meters is new Float; 
    type Miles is new Float;
    Dist_Imperial : Miles; 
    Dist_Metric : constant Meters := 1000.00; 

    function To_Miles(M : Meters) return Miles is 
    begin
        return Miles(M) * 621.371e-6;
    end To_Miles;
begin
    Dist_Imperial := To_Miles(Dist_Metric); 

    Put_Line(Miles'Image(Dist_Imperial)); 
end Conv_01;