program ej7;
var
    m, n, j, i: integer;
begin
    write('Ingrese m: ');
    readln(m);
    write('Ingrese n: ');
    readln(n);
    for i := m to n do
        begin
            writeln('>>> Tabla ', i, ' <<<');
            for j := 1 to 10 do
                writeln(j, '*', i, '=', j*i)
        end;
end.