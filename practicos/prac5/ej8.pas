program ej8;
var
    c1, c2, op : char;
    n1, n2 : integer;
begin
    read(c1);
    repeat
        repeat
            n1 := n1 * 10 + ord(c1) - ord('0');
            read(c1)
        until (c1 = '+') or (c1 = '*') or (c1 = '/') or (c1 = '-') or (c1 = '=');
        op := c1;
        if op <> '=' then
        begin
            read(c2);
            repeat
                n2 := n2 * 10 + ord(c2) - ord('0');
                read(c2)
            until (c2 = '+') or (c2 = '*') or (c2 = '/') or (c2 = '-') or (c2 = '=');
            op := c2;
            case op of
                '+' : n1 := n1 + n2;
                '*' : n1 := n1 * n2;
                '/' : n1 := n1 div n2;
                '-' : n1 := n1 - n2;
            end;
        end;
    until op = '=';
    writeln(n1)
end.