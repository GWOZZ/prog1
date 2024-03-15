program ej10;
const
    base = 77;
var
    peso : real;
begin
    write('Ingrese peso del paquete: ');
    readln(peso);
    if peso < 0 then
        writeln('El peso debe ser mayor a 0')
    else
        writeln('Peso | Costo');
        if peso <= 1 then
            writeln(peso:0:2, ' $', base)
        else
            writeln(peso:0:2, ' $', base + (round((peso - 1) + 0.5) * 56))
end.