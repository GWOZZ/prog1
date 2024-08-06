program ej7;
var
    m, v : real;
begin
    write('Ingresar valor medido y valor verdadero: ');
    readln(m, v);
    writeln('Medición = ', m);
    writeln('Valor verdadero = ', v);
    writeln('Error relativo = ', abs(m - v) / v)
end.