program ej1;
var
    n, m, tmp: integer;
begin
    write('Ingrese m y n: ');
    readln(m, n);
    write('El MCD es: ');
    while n <> 0 do
        begin
            tmp := m;
            m := n;
            n := tmp mod n;
        end;
    writeln(m)
end.