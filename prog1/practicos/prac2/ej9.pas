program ej9;
var
    x : real;
begin
    write('Ingrese el valor de x: ');
    readln(x);
    writeln('Valor introducido: x = ', x);
    writeln('Suma de los cinco términos = ', 1 + (x) * (1 + (x/2) * (1 + (x/3) * (1 + (x/4)))));
    writeln('Valor de exp(a) = ', exp(x))
end.