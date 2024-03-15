program ej13;
var
    d1, d2, d3 : char;
    dec : integer;
begin
    write('Ingrese número positivo hexedecimal de 3 cifras: ');
    read(d1, d2, d3);
    if (ord('0') <= ord(d1)) and (ord(d1) <= ord('9')) then
        dec := (ord(d1) - ord('0')) * sqr(16)
    else
        dec := (ord(d1) - ord('A') + 10) * sqr(16);
    if (ord('0') <= ord(d2)) and (ord(d2) <= ord('9')) then
        dec := dec + (ord(d2) - ord('0')) * 16
    else
        dec := dec + (ord(d2) - ord('A') + 10) * 16;
    if (ord('0') <= ord(d3)) and (ord(d3) <= ord('9')) then
        dec := dec + (ord(d3) - ord('0'))
    else
        dec := dec + (ord(d3) - ord('A') + 10);
    writeln('Hexadecimal ', d1, d2, d3, ' = Decimal ', dec)
end.