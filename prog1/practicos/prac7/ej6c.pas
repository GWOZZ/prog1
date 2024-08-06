program raices;
var
    a, b, c, cant : integer;
    x1, x2 : real;

procedure raices(a, b, c : integer; var cant : integer; var raiz1, raiz2 : real);
var
    disc : real;
begin
    if a <> 0 then begin
        disc := sqr(b) - 4 * a * c;
        if disc < 0 then
            cant := 0
        else if disc = 0 then begin
            cant := 1;
            raiz1 := - b / (2 * a)
        end
        else begin
            cant := 2;
            raiz1 := (- b - sqrt(disc)) / (2 * a);
            raiz2  := (- b + sqrt(disc)) / (2 * a)
        end;
    end
    else if b <> 0 then begin
        cant := 1;
        raiz1 := - c / b
    end
    else if c <> 0 then
        cant := 0
    else
        cant := -1;
end;

begin
    write('Ingrese los coeficientes del polinomio: ');
    readln(a, b, c);
    cant := 0;
    x1 := 0;
    x2 := 0;
    raices(a, b, c, cant, x1, x2);
    case cant of
        0 : writeln('El polinomio no tiene raíces reales');
        1 : writeln('El polinomio tiene una raíz real en x = ', x1:0:2);
        2 : writeln('El polinomio tiene dos raíces reales en x1 = ', x1:0:2, ' y en x2 = ', x2:0:2);
        -1 : writeln('El polinomio tiene infinitas raíces reales')
    end;
end.