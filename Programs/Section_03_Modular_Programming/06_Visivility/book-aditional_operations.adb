package body Book.Aditional_Operations is 

    function Get_Extended_Title return String is 
    begin
        return "Book Title: " & Title; 
    end Get_Extended_Title;

    function Get_Extended_Author return String is 
    begin 
        -- "Author" string is declared in the body of the 
        -- body of the Book package, hence it is not visible here.
        -- Therefore, we cannot return the Author
        -- A UNKNOWN AUTHOR WILL BE SENT

        return "Book Author: UNKNOWN";
    end Get_Extended_Author;

end Book.Aditional_Operations;