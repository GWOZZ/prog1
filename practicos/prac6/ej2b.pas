program ej2b;
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
        until car <> ' ';
        if car = letra then
            contador := contador + 1;
        if car <> '.' then
            repeat
                read(car)
            until (car = ' ') or (car = '.');
    until car = '.';
    writeln('La oración tiene ', contador, ' palabras que empiezan con ', letra, '.')
end.