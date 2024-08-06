function distancia(x1, y1, x2, y2 : real) : real;
begin
    distancia := sqrt(sqr(abs(x2 - x1)) + sqr(abs(y2 - y1)))
end;