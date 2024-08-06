program octal (input, output);
var
    d1, d2, d3 : char;
    dec : integer;
begin
    write('Ingresar número octal: ');
    read(d1, d2, d3);
    dec := (ord(d1)-ord('0')) * 8 * 8 + (ord(d2)-ord('0')) * 8 + (ord(d3)-ord('0'));
    writeln(dec)
end.
