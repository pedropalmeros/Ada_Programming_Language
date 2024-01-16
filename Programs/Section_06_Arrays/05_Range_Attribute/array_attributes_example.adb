with Ada.Text_IO; use Ada.Text_IO;

procedure Array_Attributes_Example is 
    type My_Int is range 0 .. 1000; 
    type My_Int_Array is array (1 .. 5) of My_Int; 
    -- the My_Int_Array type has 5 elments and those elements are of type 'My_Int'

    Tab : My_Int_Array := (2, 3, 5, 7, 11); 
begin  
    for I in Tab'First .. Tab'Last-1 loop     
    --           ^Iterate on every index except the last
        Put(My_Int'Image(Tab(I)));
    end loop;
    New_Line;
end Array_Attributes_Example;