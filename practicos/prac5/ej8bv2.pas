program ej8bv2;
var
    op : char;
    n1, n2 : integer;
begin
    n1 := 0;
    n2 := 0;
    write('Inrgese operación a calcular: ');
    read(n1);
    read(op);
    while op = ' ' do
      read(op);
    if op <> '=' then
    repeat
    begin
        read(n2);
        case op of
            '+' : n1 := n1 + n2;
            '*' : n1 := n1 * n2;
            '/' : n1 := n1 div n2;
            '-' : n1 := n1 - n2;
        end;
        read(op);
        while op = ' ' do
      		read(op);
    end;
    until op = '=';
    writeln(n1)
end.