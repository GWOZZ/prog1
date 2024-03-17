program ej12;
var x, y, n, max, f : integer;
begin
    write('Ingrese un valor para n: ');
    readln(n);
    max := sqr(n + n) - 11 * n * n;
    for x := -n to n do
        begin
            for y := x to n do
                begin
                        f := sqr(x + y) - 11 * x * y;
                        if max < f then
                            max := f
                end;
        end;
    writeln('El valor máximo para x e y en el entorno de ', -n, ' a ', n, ' es ', max)
end.