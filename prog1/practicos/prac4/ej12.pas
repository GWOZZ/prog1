program ej12;
var x, y, n, max : integer;
begin
    write('Ingrese un valor para n: ');
    readln(n);
    max := 0;
    for x := -n to 0 do
        begin
            for y := x to n do
                    if max < sqr(x + y) - 11 * x * y then
                        max := sqr(x + y) - 11 * x * y
        end;
    writeln('El valor máximo para x e y en el entorno de ', -n, ' a ', n, ' es ', max)
end.