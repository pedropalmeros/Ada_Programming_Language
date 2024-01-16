-- In Ada, an aggregate is, in effect, a literal value for a composite type. It's a very powerful notation that
-- helps to avoid writing procedural code for the initialization of your data structures in many cases. 

-- A basic rule when writing aggregates is that every component of the array or record has to be specified, even 
-- components that have a default value. 

-- There are few shortcuts that can be used to make the notation more convenient:
--      -> To specify the default value for a component, you can use '<>' notation. 
--      -> You can use the '|' symbol to five several components the same value. 
--      -> You can use the 'others' choice to refer to every component that has not yet been specified, provided all those
--          fields have the same time. 
--      -> You can use the range notation '..' to refer to specify a contiguous sequence of indices in an array. 

with Ada.Text_IO; use Ada.Text_IO;

procedure Point_Proc is  
    type Point is record   
        X, Y : Integer := 0;
    end record;

    type Point_array is array(Positive range<>) of Point;

    Origin_1 : Point;
    Origin_2 : Point; 
    Points_1 : Point_Array := ((1,2), (3,4)); 
    Points_2 : Point_Array := ( 1       => (1,2),
                                2       => (3,4),
                                3 .. 20 => <>);
begin
    Origin_1 := (X | Y => <>);
    origin_2 := (others => <>);


end Point_Proc;