program ej6;
var
    a, n, max, min, ind: integer;
begin
    write('Ingrese un valor para n: ');
    readln(n);
    write('Ingrese 8 enteros: ');
    read(min);
    max := min;
    for ind := 2 to n do
        begin
            read(a);
            if a > max then
                max := a
            else
                if a < min then
                    min := a
        end;
    writeln('El mayor entero ingresado es: ', max);
    writeln('El menor entero ingresado es: ', min)
end.