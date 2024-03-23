program ej4a;
var
    num, ind, suma : integer;
begin
    suma := 0;
    ind := 0;
    read(num);
    repeat
        ind := ind + 1;
        suma := suma + num;
        read(num);
    until num = -1;
    writeln('Suma = ', suma);
    writeln('Promedio = ', (suma / ind):0:2)
end.