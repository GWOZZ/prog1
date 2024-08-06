program ej4;
var
    num, max, min : integer;
begin
    read(num);
    max := num;
    min := num;
    repeat
        if num > max then 
            max := num;
        if num < min then
            min := num;
        read(num);
    until num = -1;
    writeln('Máximo = ', max);
    writeln('Mínimo = ', min)
end.