program ej4;
var
    n, num, divisor, contador: integer;
    primo: boolean;
begin
    write('Ingrese n: ');
    readln(n);    
    num := 2;
    for contador := 1 to n do begin
        primo := true;
        for divisor := 2 to trunc(sqrt(num)) do
            if (num mod divisor) = 0 then begin
                primo := false;
                break;
            end;
        if primo then begin
            write(num, ' ');
        end;
        num := num + 1;
    end;
end.

SIN TERMINAR