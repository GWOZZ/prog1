program ej8;
var
    x : integer;
begin
    write('Número introducido = ');
    readln(x);
    writeln('Cuadrado del número = ', sqr(x));
    writeln('Siguiente número seudoaleatorio = ', ((x * x) mod 1000) div 10)
end.