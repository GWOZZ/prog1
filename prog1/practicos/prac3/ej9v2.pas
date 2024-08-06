program ej9v2;
var
    num : integer;
begin
    write('Ingrese un número decimal de a lo sumo 4 cifras: ');
    readln(num);
    if num div 1000 = 0 then
        writeln(num)
    else
        case num mod 1000 of
            1..9:       writeln(num div 1000, '.00', num mod 1000);
            10..99:     writeln(num div 1000, '.0', num mod 1000);
            100..999:   writeln(num div 1000, '.', num mod 1000);
        end
end.