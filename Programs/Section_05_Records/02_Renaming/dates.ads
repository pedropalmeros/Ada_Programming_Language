package Dates is 
--| This package is used to handle dates data types with no big problems

    type Months is (
            January, February, March, April, May,
            June, July, August, September, 
            October, November, December
            );
    
    type Date is record
        Day     : Integer range 1 .. 31 := 1; 
        Month   : Months := January;
        Year    : Integer range 1 .. 3000 := 2032; 
    end record; 

    procedure Increase_Month( Some_Day : in out Date);

    procedure Display_Month( Some_Day : in out Date); 
end Dates;