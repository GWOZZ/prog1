program ej8;
var
    a, b, n, factor: integer;
begin
    write('Ingrese dos enteros positivos: ');
    readln(a, b);
    write('Los numeros primos entre ', a, ' y ', b, ' son: ');
    if a = 1 then a := 2;
    for n := a to b do
        begin
            factor := 2;
            while (factor <= sqrt(n)) and (n mod factor <> 0) do
                factor := factor + 1;
            if (n mod factor <> 0) or (n = 2) then
                write(n, ' ')
        end;
    writeln
end.