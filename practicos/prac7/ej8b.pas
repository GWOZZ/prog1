program ej8b;
var
    a, b, n: integer;

function esPrimo(num : integer) : boolean;
var
    i : integer;
begin
    i := 2;
    while (i <= trunc(sqrt(num))) and (num mod i <> 0) do
        i := i + 1;
    if (num mod i <> 0) or (num = 2) then 
        esPrimo := true
    else
        esPrimo := false
end;

begin
    write('Ingrese dos enteros positivos: ');
    readln(a, b);
    write('Los numeros primos entre ', a, ' y ', b, ' son: ');
    if a = 1 then a := 2;
    for n := a to b do
        if esPrimo(n) then
            write(n, ' ');
    writeln
end.