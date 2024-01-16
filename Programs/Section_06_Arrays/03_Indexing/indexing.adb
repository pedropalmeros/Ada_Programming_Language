with Ada.Text_IO; use Ada.Text_IO;

procedure Greet is 
    type My_Int is range 0 .. 1000;
    type My_Index is range 1 .. 5; 
    type Your_Index is range 1 .. 5; 

    type My_Int_Array is array(My_Index) of My_Int; 
    Tab : My_Int_Array := (2,3,5,7, 11); 
begin
    for I in Your_Index loop
        Put (My_Int'Image(Tab(I)));
    ---
    end loop;
    New_Line; 
end Greet; 

--| NOTE in this case observe that My_Int is range from 0 -> 1000 but it is defined as a new type 
--| in the for loop the loop goes in the range of 'Your_Index' which is new type from 1->5 but it is another type
--| hence inside the for loop there is a compile time error since I is of type Your Index, and the the nature of the index
--| does not match