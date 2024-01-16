with Ada.Text_IO; use Ada.Text_IO; 

procedure Unconstrained_Array_Example is
    type Days is (Monday, Tuesday, Wednesday, Thursday,
                  Friday, Saturday, Sunday); 

    type Workload_Type is array (Days range <>) of Natural; 
    -- Indefinete array type, Bounds are of type Days, but unknown. 

    Workload : constant Workload_Type(Monday .. Friday) :=(Friday => 7, others => 8); 
    -- Specify the bounds when declaring ^                    ^                   ^
    --                          Specify element name of index ^                   ^
    --                                                              Defaul Value  ^ 

    begin
        for I in Workload'Range loop    
            Put_Line(Integer'Image(Workload(I)));
        end loop; 
    end Unconstrained_Array_Example;

    -- Every array type we have defined so far has a fixed size: every instance of this type will have the same bounds
    -- and therefore the same number of elements and same size.

    -- However, Ada also allows to declare array types whose bounds are nto fixed: in that case, the bounds will need to
    -- be provided when creating instances of the type. 