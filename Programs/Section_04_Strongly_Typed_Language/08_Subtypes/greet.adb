with Ada.Text_IO; use Ada.Text_IO;

procedure Greet is 
    type Days is (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);

    -- Declaration of a subtype
    subtype Weekend_Days is
        Days range Saturday .. Sunday; 

    M : Days := Sunday; 

    S : Weekend_Days := M; 
    
    -- NOTE: In this case the assignation is not illegal since the S and M are related, S belongs to a subset of M. 
begin  
    for I in Days loop
        case I is
            -- Just like a type, a subtype can 
            -- be used as a range
            when Weekend_Days => 
                Put_Line("Week end!"); 
            when others => 
                Put_Line("Hello on " & Days'Image(I));
        end case; 
    end loop; 
end Greet;

-- subtype <SUBTYPE_NAME> is <PARENT_DATA> range <LOWER BOUND> .. <UPPER BOUND>; 

-- subtype Natural is Integer range 0 .. Integer'Last; 
-- subtype Positive is Integer range 1 .. Integer.Last; 

-- While subtypes of a type are statically compatible with eacho other, constraints are enforced at run time.
-- If you violate a subtype constraint, an exception will be raised. 