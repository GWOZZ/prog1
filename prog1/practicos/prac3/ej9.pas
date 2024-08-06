program ej9;
var
    num : integer;
begin
    write('Ingrese un número decimal de a lo sumo 4 cifras: ');
    readln(num);
    if num >= 1000 then
        if num mod 1000 < 100 then
            if num mod 1000 < 10 then
                writeln(num div 1000, '.', '00', num mod 10)
            else
                writeln(num div 1000, '.', '0', num mod 100)
        else
            writeln(num div 1000, '.', num mod 1000)
    else
        writeln(num)
end.