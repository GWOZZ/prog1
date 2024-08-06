program ej11;
var
    a, b, c, d, dig: char;
begin
    write('Ingrese un entero de 4 digitos: ');
    readln(a, b, c, d);
    write('Ingrese un entero de 1 digitos: ');
    readln(dig);
    if (a = dig) or (b = dig) or (c = dig) or (d = dig) then
        begin
            writeln(a, b, c, d);
            if a = dig then
                write('+')
            else
                write(' ');
            if b = dig then
                write('+')
            else
                write(' ');
            if c = dig then
                write('+')
            else
                write(' ');
            if d = dig then
                writeln('+')
            else
                writeln(' '); 
        end
    else
        writeln(dig, ' no está en ', a, b, c, d)
end.