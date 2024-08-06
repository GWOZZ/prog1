program ej9;
var
    a, b, n, factor, primo: integer;
begin
    write('Ingrese dos enteros positivos: ');
    readln(a, b);
    writeln('Los primos gemelos entre ', a, ' y ', b, ' son: ');
    if a = 1 then a := 2;
    primo := 2;
    for n := a to b do
        begin
            factor := 2;
            while (factor <= sqrt(n)) and (n mod factor <> 0) do
                factor := factor - (factor + 1) mod 2 + 2;
            if (n mod factor <> 0) or (n = 2) then
                begin
                    if (primo = n - 2) then
                        writeln(primo, ' y ', n);
                    primo := n;
                end;
        end
end.