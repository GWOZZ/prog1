program ej8a;
var
    dig, op : char;
    n1, n2 : integer;
begin
    n1 := 0;
    n2 := 0;
    write('Inrgese operación a calcular: ');
    read(dig);
    repeat
        n1 := n1 * 10 + ord(dig) - ord('0');
        read(dig)
    until (dig < '0') or (dig > '9');
    op := dig;
    if op <> '=' then
    repeat
        n2 := 0;
        read(dig);
        repeat
        	n2 := n2 * 10 + ord(dig) - ord('0');
            read(dig)
        until (dig < '0') or (dig > '9');
        case op of
            '+' : n1 := n1 + n2;
            '*' : n1 := n1 * n2;
            '/' : n1 := n1 div n2;
            '-' : n1 := n1 - n2;
        end;
        op := dig;
    until op = '=';
    writeln(n1)
end.