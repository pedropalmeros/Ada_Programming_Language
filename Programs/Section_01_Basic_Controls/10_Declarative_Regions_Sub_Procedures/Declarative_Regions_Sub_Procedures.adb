With Ada.Text_IO; use Ada.Text_IO;

procedure Main is 
    X: integer; 
begin
    X := 0;
    Put_Line("The initial value of X is " & Integer'Image(X));

    Put_Line("Performing operation on X ... ");

    X := X + 1;

    Put_Line("The value of X now is " & Integer'Image(X));
end Main;