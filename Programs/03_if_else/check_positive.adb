with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure check_positive is 
    N : Integer;
begin
    -- Put a String
    Put ("Enter an integer value: ");

    -- Read in an integer value
    Get(N);

    -- Print an integer into the screen
    Put(N);

    if N > 0 then
        -- Print a is a positive number
        Put_Line(" is a positive number");
    else
        Put_Line(" is a non-positive number");
    end if;
end check_positive;
