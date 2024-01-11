with Ada.Text_IO; use Ada.Text_IO; 

procedure Array_Bounds_Example is 
    type My_Int is range 0..1000;
    type Index is range 11 .. 15; 

    type My_Int_Array is array(Index) of My_Int; 
    Tab : constant My_Int_Array := (2,3,5,7,11);
begin   
    for I in Index loop
        Put("Index : " & Index'Image(I) & "   ----> ");
        Put(My_Int'Image(Tab(I)));
        New_Line;
    end loop;
    New_Line;
end Array_Bounds_Example;

--NOTE: One effect is tat hte bounds of an array can be any values. In this case the lower bound is 11 and the upper bound is 15