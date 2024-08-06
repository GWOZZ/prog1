program ej10;
var
    a : real;
begin
    write('Ingrese el valor de a: ');
    readln(a);
    writeln('Valor introducido: a = ', a);
    writeln('Raiz cuadrada calculada = ', exp(0.5 * ln(a)));
    writeln('Valor de sqrt(a) = ', sqrt(a))
end.