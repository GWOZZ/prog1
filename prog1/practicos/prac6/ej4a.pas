program ej4a;
var
    i, j, n, ultnum, factor: int64;
begin
    write('Ingrese n: ');
    readln(n);
    ultnum := 1;
    i := 1;
    repeat
        factor := 2;
        j := ultnum + 1;
        while (j mod factor <> 0) and (factor <= sqrt(j)) do
            factor := factor + 1;
        if (j mod factor <> 0) or (j = 2) then
            begin
                writeln(i, ': Primo: ', j, ' Raiz Cuadrada: ', sqrt(j):0:2);
                i := i + 1;
            end;
        ultnum := j;
    until (ultnum = j) and (i > n)
end.

{
¿MAS EFICIENTE?
begin
    write('Ingrese n: ');
    readln(n);
    writeln(1, ': Primo: ', 2, ' Raiz Cuadrada: ', sqrt(2):0:2);
    i := 2;
    ultnum := 1;
    j := 1;
    while (ultnum <> j) or (i <= n) do begin
        factor := 2;
        j := ultnum + 2;
        while (j mod factor <> 0) and (factor <= sqrt(j)) do
            factor := factor + 1;
        if (j mod factor <> 0) or (j = 2) then
            begin
                writeln(i, ': Primo: ', j, ' Raiz Cuadrada: ', sqrt(j):0:2);
                i := i + 1;
            end;
        ultnum := j;
    end
end.
}