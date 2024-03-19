program ej10;
const
    base = 77;
    adic = 56;
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
            writeln(peso:0:2, ' $', base + (trunc(peso) * adic))
end.