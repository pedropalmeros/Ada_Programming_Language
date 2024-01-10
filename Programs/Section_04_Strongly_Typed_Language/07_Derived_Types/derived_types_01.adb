with Ada.Text_IO; use Ada.Text_IO; 

procedure Main is
    -- ID card number type
    -- incompatible with Integer

    type Social_Security_Number is new Integer range 0 .. 999_99_9999; 

    SNN : Social_Security_Number := 555_55_5555; 

    I : Integer; 
    Invalid : Social_Security_Number := -1; 

begin 
    -- Illegal since they are of different types
    I := SSN; 

    -- Illegal since they are of different types
    SNN := I; 

    -- CORRECT, with explicit conversion
    I := Integer(SSN); 

    -- CORRECT, with explicit conversion
    SNN := Social_Security_Number(I);
end Main;

-- NOTE: In Ada you can create new types based on exising ones.
-- You get a type that has the same properties as some xisting type but is treated as a disntinct type in the 
-- interest of strong typing. 

-- The type Social_Security is said to be a derived type; its parent type is Integer.

