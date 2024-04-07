program ej7;
var
    n, divisor : integer;
begin
    write('Ingrese un entero positivo: ');
    readln(n);
    divisor := 2;
    while (divisor <= sqrt(n)) and (n mod divisor <> 0) do
        divisor := divisor + 1;
    if (n mod divisor = 0) and (n <> 2)  then
        writeln(n, ' no es un número primo.')
    else
        writeln(n, ' es un número primo.')
end.