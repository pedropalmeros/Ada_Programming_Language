with Ada.Text_IO; use Ada.Text_IO;

procedure Range_Example is 
    type My_Int is range 0 .. 1000; 
    type My_Int_Array is array (1 .. 5) of My_Int; 
    Tab : constant My_Int_Array := (2,3,5,7,11); 
begin 
    for I in Tab'Range loop 
    --             ^GETS THE RANGE OF TAB IT MIGHT BE LIKE range 1 .. 5; 
        Put(My_Int'Image(Tab(I)));
    end loop;
    New_Line;
end Range_Example;