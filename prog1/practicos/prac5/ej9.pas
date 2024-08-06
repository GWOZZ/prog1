program ej9.pas;
var
    n : integer;
    num, s, sum : real;
begin
    write('Ingrese su conjunto de números: ');
    read(num);
    n := 0;
    sum := 0;
    s := 0;
    repeat
        n := n + 1;
        sum := sum + num;
        s := s + sqr(num);
        read(num);
    until num < 0;
    writeln('La desviación estándar es ', sqrt(s / n - sqr(sum/n)):0:2)
end.