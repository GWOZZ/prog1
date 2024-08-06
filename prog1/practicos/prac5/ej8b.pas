program ej8a;
var
    c1, c2, op : char;
    n1, n2 : integer;
begin
    n1 := 0;
    n2 := 0;
    write('Inrgese operación a calcular: ');
    read(c1);
    repeat
        n1 := n1 * 10 + ord(c1) - ord('0');
        repeat
            read(c1)
        until c1 <> ' '
    until (c1 < '0') or (c1 > '9');
    op := c1;
    if op <> '=' then
    repeat
        n2 := 0;
        repeat
            read(c2)
        until c2 <> ' ';
        repeat
        	n2 := n2 * 10 + ord(c2) - ord('0');
            repeat
                read(c2)
            until c2 <> ' '
        until (c2 = '+') or (c2 = '*') or (c2 = '/') or (c2 = '-') or (c2 = '=');
        case op of
            '+' : n1 := n1 + n2;
            '*' : n1 := n1 * n2;
            '/' : n1 := n1 div n2;
            '-' : n1 := n1 - n2;
        end;
        op := c2;
    until op = '=';
    writeln(n1)
end.