program ej11;
var
    n, d: integer;
begin
    write('Ingrese un entero de 4 digitos: ');
    readln(n);
    write('Ingrese un entero de 1 digitos: ');
    readln(d);
    writeln(n);
    if n div 1000 = d then
        write('+')
    else
        write(' ');
    if n div 100 mod 10 = d then
        write('+')
    else
        write(' ');
    if n div 10 mod 10 = d then
        write('+')
    else
        write(' ');
    if n mod 10 = d then
        writeln('+')
    else
        writeln(' '); 
end.