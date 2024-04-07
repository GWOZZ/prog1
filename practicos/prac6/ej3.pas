program ej3;
var
    x, poli: real;
    coef: integer;
begin
    poli := 0;
    write('Ingrese x: ');
    readln(x);
    write('Ingrese los coeficientes: ');
    read(coef);
    while coef <> -1 do
        begin
            poli := poli * (x) + coef;
            read(coef)
        end;
    writeln('El valor del polinomio evaluado en ', x:0:2, ' es ', poli:0:2)
end.