program ej2a;
var
    contador: integer;
    letra, car: char;
begin
    contador := 0;
    write('Letra: ');
    readln(letra);
    write('Oración: ');
    repeat
        repeat
            read(car)
        until (car = letra) or (car = '.');
        if car = letra then
            begin
                read(car);
                if (car = ' ') or (car = '.') then
                    contador := contador + 1;
            end;
    until car = '.';
    writeln('La oración tiene ', contador, ' palabras que terminan con ', letra, '.')
end.