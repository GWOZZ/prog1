program ej5;
var
    n, ind: integer;
begin
    write('n = ');
    readln(n);
    write(1, ' ');
    for ind := 2 to round(n/2) do
        if n mod ind = 0 then
            write(ind, ' ');
    writeln(n)
end.