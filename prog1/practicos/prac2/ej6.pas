program ej6;
var
    a, b, min: integer;
begin
    write('Ingresar horarios de forma hhmm: ');
    readln(a, b);
    min := (a mod 100) + (a div 100) * 60 + (b mod 100) + (b div 100) * 60;
    write(min div (24 * 60), ' ');
    write(min mod (24 * 60) div 60);
    writeln(min mod 60)
end.