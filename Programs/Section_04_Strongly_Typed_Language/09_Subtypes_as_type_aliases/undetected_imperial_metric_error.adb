with Ada. Text_IO; use Ada.Text_IO; 

procedure Undetected_Imperial_Metric_Error is 

    -- Declare two type aliases
    subtype Meters is Float; 
    subtype Miles is Float; 

    Dist_Imperial : Miles;

    -- Declare a constant
    Dist_Metric : constant Meters := 100.0;
begin
    -- No version to Miles type required
    Dist_Imperial := (Dist_Metric * 1609.0)/ 1000.0;

    -- Not correct, but undetected; 
    Dist_Imperial := Dist_Metric; 

    Put_Line(Miles'Image(Dist_Imperial)); 
end Undetected_Imperial_Metric_Error;

-- In ADA we can create type aliases, which generate alternative names --aliases-- for knwon types. 
-- Note that type aliases are sometimes called type synonyms. 

-- In C, for example, we can use a typedef declaration to create a type alias. 

