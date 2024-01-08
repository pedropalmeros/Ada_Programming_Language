with A_Procedure_With_Hyper_Name;

procedure Show_Renaming is 

    procedure Show (S : String) renames A_Procedure_With_Hyper_Name;
begin
    Show("Hello World");
end Show_Renaming;