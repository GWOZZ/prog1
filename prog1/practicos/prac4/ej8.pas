program ej8;
var
    n, i, j: integer;
    c : char;
begin
    write('Ingrese un carácter c: ');
    readln(c);
    write('Ingrese un valor para n: ');
    readln(n);
    for i := n downto 1 do
        begin
            for j := 1 to i do
                write(c);
            writeln
        end
end.