with Ada.Text_IO; use Ada.Text_IO; 

procedure Greet is 
    type My_Int is range 0 .. 1000;
    type Index is range 1 .. 5; 

    -- Observe that in this case an array type is being declared but the array itself is not being declare
    type My_Int_Array is array(Index) of My_Int; 
  --     ^ array name  array size ^       ^ Type of elements of the array. 
    --                            ^ boundaries of the array.


    -- Once the array type has been defined, an array can be declared.
    Arr : My_Int_Array := (2, 3, 5, 7, 11); 

    V : My_Int; 
begin 
    for I in Index loop
        V := Arr(I); 
        Put(My_Int'Image(V));
    end loop;
    New_Line; 
end Greet; 

-- NOTES:  The frist point to note is that we speify the index type for the array, rather than its size. Here we declared
-- an integer type named Index ranging from 1 to 5, so each array instance will have 5 elements, with the initial element at
-- at index 1 and the last element at index 5. 

-- Although this example used an integer type for the index, Ada is more general: any deiscrte type is permited
-- to index an array, including Enum types.