program ej7;
var
    a, n, i, j: integer;
begin
    write('Ingrese un valor para n: ');
    readln(n);
    write('Ingrese 5 enteros positivos: ');
    for i := 1 to n do
        begin
            read(a);
            for j := 1 to a do
                write('*');
            writeln
        end;
end.