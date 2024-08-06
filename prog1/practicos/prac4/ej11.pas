program ej11;
var
    m, n, i, max: integer;
begin
    write('Ingrese un valor para m: ');
    readln(m);
    write('Ingrese un valor para n: ');
    readln(n);
    write('El valor máximo para x en el entorno de ', m, ' a ', n, ' es ');
    max := sqr(m) - 18 * m + 5;
    for i := m + 1 to n do
        begin
            m := sqr(i) - 18 * i + 5;
            if m > max then
                max := m
        end;
    writeln(max)
end.