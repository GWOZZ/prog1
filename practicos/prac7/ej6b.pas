procedure raices(a, b, c : integer; var cant : integer; var raiz1, raiz2 : real)
var
    disc : real;
begin
    disc := sqrt(sqr(b) - 4 * a * c);
    if disc < 0 then
        cant := 0
    else if disc = 0 then begin
        cant := 1;
        raiz1 := - b / (2 * a)
    end
    else begin
        cant := 2;
        raiz1 = (- b - disc) / (2 * a)
        raiz2  := (- b + disc) / (2 * a)
    end;
