program ej7b;
var
    x1, x2, y1, y2 : real;

function distancia(x1, y1, x2, y2 : real) : real;
begin
    distancia := sqrt(sqr(abs(x2 - x1)) + sqr(abs(y2 - y1)))
end;

begin
    write('Ingrese las coordenadas del primer punto: ');
    read(x1); readln(y1);
    write('Ingrese las coordenadas del segundo punto: ');
    read(x2); readln(y2);
    writeln('La distancia entre los puntos es: ', distancia(x1, y1, x2, y2):0:2)
end.