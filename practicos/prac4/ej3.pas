program ej3;
const 
    TOTAL = 4;
var 
    sum, j, ind : integer;
    ej : char;
begin
    write('Elija la parte del ejercicio: ');
    readln(ej);
    case ej of
        'a': 
            begin
                sum := 0;
                j := 10;
                for ind := 1 to 5 do
                begin
                sum := sum + 2 * ind + 1 + j;
                j := j - 4;
                end;
                writeln(sum)
            end;
        'b':
            begin
                sum := 0;
                for ind := 1 to TOTAL do
                for j := 1 to ind do
                sum := sum + ind + j;
                writeln(sum)
            end;
        else
            writeln('Ejercicio invalido');
    end;
end.