program ej4;
var
    a, b, n , ind: integer;
begin
    write('Ingrese valores para a, b y n: ');
    readln(a, b, n);
    for ind := a to b do
        if ind mod n = 0 then
            write(ind, ' ');
    writeln
end.