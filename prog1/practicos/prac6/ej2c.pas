program ej2c;
var
    palabra, global: integer;
    letra, car: char;
begin
    global := 0;
    write('Letra: ');
    readln(letra);
    write('Oración: ');
    repeat
        palabra := 0;
        repeat
            read(car)
        until car <> ' ';
        repeat
            if car = letra then
                palabra := palabra + 1;
            read(car);
        until (car = ' ') or (car = '.');
        if palabra = 1 then
            global := global + 1;
    until car = '.';
    writeln('La oración tiene ', global, ' palabras que contienen ', letra, ' una sola vez.')
end.