with Ada.Text_IO; use Ada.Text_IO;

procedure Date_Record is
    type Months is (January, February, March, April, May, June, July, August, September, October, November, December);
    type Date_Rec is record
        -- The following declarations are components of the record
        Day   : Integer range 1 .. 31 := 1; 
        Month : Months := January;

        -- You can add custom constraints on fields
        Year : Integer range 1 .. 3000:= 2024;
    end record; 

    myDate : Date_Rec; -- Default values
    myBirthday : Date_Rec := (5,March,1751); 
    yourBirthday : Date_Rec := (Day   => 26,
                                 Month => January,
                                 Year  => 1584
                                );
begin
    Put_Line("Día de myDate: " & Integer'Image(myDate.Day));
    Put_Line("Mes de myDate: " & Months'Image(myDate.Month)); 
    Put_Line("Año de myDate: " & Integer'Image(myDate.Year));

    Put_Line("Mi Cumple"); 
    Put_Line("Día de myDate: " & Integer'Image(myBirthday.Day));
    Put_Line("Mes de myDate: " & Months'Image(myBirthday.Month)); 
    Put_Line("Año de myDate: " & Integer'Image(myBirthday.Year));

    Put_Line("Su cumple"); 
    Put_Line("Día de myDate: " & Integer'Image(yourBirthday.Day));
    Put_Line("Mes de myDate: " & Months'Image(yourBirthday.Month)); 
    Put_Line("Año de myDate: " & Integer'Image(yourBirthday.Year));

    
end Date_Record;