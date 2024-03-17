program ej1;
var 
    ej : char;
    aux, n, a, b, k, bajo, alto, i, j, num : Integer;
begin
    write('Elija la parte del ejercicio: ');
    readln(ej);
    case ej of
        'a': 
            begin
                aux := 2;
                for n := 1 to 4 do
                    begin
                        aux := aux * n;
                        writeln(n, aux)
                    end
            end;
        'b':
            begin
                for b := 1 to 3 do
                    begin
                        if b <= 1 then
                            a := b - 1;
                        if b <= 2 then
                            a := a - 1
                        else
                            a := a + 1
                    end;
                writeln(a)
            end;
        'c':
            begin
                bajo := 1;
                for k := bajo to 3 do
                    begin
                        bajo := bajo + 2;
                        writeln(k, bajo)
                    end
            end;
        'd':
            begin
                alto := 4;
                for k := alto downto 3 do
                    write(k, alto);
                writeln
            end;
        'e':
            begin
                num := 1;
                for i := 1 to 3 do
                    begin
                        num := num + i;
                        for j := 1 to num do
                            write(j);
                        writeLn(i)
                    end;
            end;
        else
            writeln('Ejercicio invalido');
    end;
end.