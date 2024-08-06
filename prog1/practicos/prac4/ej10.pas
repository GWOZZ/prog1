program ej10;
var
    i, n: integer;
    res: int64; {admite valores más grandes}
begin
    res := 1;
    write('Ingrese un valor para n: ');
    readln(n);
    for i := n downto 1 do
        res := res * i;
    writeln('El factorial de ', n, ' es ', res)
end.