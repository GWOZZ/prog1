function esPrimo(num : integer) : boolean;
var
    i : integer;
begin
    while (i <= trunc(sqrt(num))) and (num mod i <> 0) do
        i := i + 1;
    if (num mod i <> 0) or (num = 2) then 
        esPrimo := False
    else
        esPrimo := True
end;