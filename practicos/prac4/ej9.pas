program ej9;
var
    x, n, i, res: integer;
begin
    write('Ingrese un valor para x: ');
    readln(x);
    write('Ingrese un valor para n: ');
    readln(n);
    res := 1;
    for i := 1 to n do
        begin
            res := res * x
        end;
    writeln('El resultado de ', x, ' elevado a la ', n, ' es: ', res)
end.