program ej11;
type
    Complejo = record
    re, im : Real;
end;

procedure SumaComplejos(c1, c2 : Complejo; var c3 : Complejo);
begin
    c3.re := c1.re + c2.re;
    c3.im := c1.im + c2.im
end;

procedure multComplejos (c1, c2 : Complejo; var c3 : Complejo);
begin
    c3.re := c1.re * c2.re - c1.im * c2.im;
    c3.im := c1.im * c2.re + c2.im * c1.re
end;

var z1, z2, z3, z4 :Complejo;
begin
    write('Ingrese la parte real e imaginaria de z1: ');
    readln(z1.re, z1.im);
    write('Ingrese la parte real e imaginaria de z2: ');
    readln(z2.re, z2.im);
    SumaComplejos(z1, z2, z3);
    begin {write suma}
        if z1.im >= 0 then
            write('(', z1.re:0:2, ' + ', z1.im:0:2, ' i) + (', z2.re:0:2)
        else
            write('(', z1.re:0:2, ' - ', abs(z1.im):0:2, ' i) + (', z2.re:0:2);
        if z2.im >= 0 then
            write(' + ', z2.im:0:2, ' i) = ', z3.re:0:2)
        else
            write(' - ', abs(z2.im):0:2, ' i) = ', z3.re:0:2);
        if z3.im > 0 then
            writeln(' + ', z3.im:0:2, ' i')
        else
            writeln(' - ', abs(z3.im):0:2, ' i')
    end {write suma};
    MultComplejos(z1, z2, z4);
    begin {write mult}
        if z1.im >= 0 then
            write('(', z1.re:0:2, ' + ', z1.im:0:2, ' i) * (', z2.re:0:2)
        else
            write('(', z1.re:0:2, ' - ', abs(z1.im):0:2, ' i) * (', z2.re:0:2);
        if z2.im >= 0 then
            write(' + ', z2.im:0:2, ' i) = ', z4.re:0:2)
        else
            write(' - ', abs(z2.im):0:2, ' i) = ', z4.re:0:2);
        if z4.im > 0 then
            writeln(' + ', z4.im:0:2, ' i')
        else
            writeln(' - ', abs(z4.im):0:2, ' i')
    end {write mult}
end.