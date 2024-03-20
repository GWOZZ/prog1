program ej12;
var
    a, b, c: real;
begin
    write('Ingrese coeficientes de la ecuación: ');
    readln(a, b, c);
    if sqr(b) - 4 * a * c = 0 then
        writeln('Dos raices reales iguales: ', -b / (2 * a) :0:2)
    else
        if sqr(b) - 4 * a * c > 0 then
            writeln('Dos raices reales diferentes: ', ((-b - sqrt(sqr(b) - 4 * a * c))/ (2 * a)):0:2, ' y ', ((-b + sqrt(sqr(b) - 4 * a * c))/ (2 * a)):0:2)
        else
            writeln('Dos raices complejas diferentes: ', -b / (2 * a):0:2, ' (+/-) ', 'i ', sqrt(abs(sqr(b) - 4 * a * c)) / (2 * a):0:2)
end.