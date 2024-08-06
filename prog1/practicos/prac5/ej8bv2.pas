program ej8bv2;

procedure readDigits(var num: integer; var digit: char);
begin
    num := 0;
    read(digit);
    while digit = ' ' do
        read(digit);
    repeat
        num := num * 10 + ord(digit) - ord('0');
        read(digit)
    until (digit < '0') or (digit > '9');
end;

var
    op, dig : char;
    n1, n2 : integer;
begin
    n1 := 0;
    n2 := 0;
    write('Inrgese operación a calcular: ');
    readDigits(n1, dig);
    op := dig;
    while op = ' ' do
        read(op);
    if op <> '=' then
    repeat
    begin
        readDigits(n2, dig);
        case op of
            '+' : n1 := n1 + n2;
            '*' : n1 := n1 * n2;
            '/' : n1 := n1 div n2;
            '-' : n1 := n1 - n2;
        end;
        op := dig;
        while op = ' ' do
      		read(op);
    end;
    until op = '=';
    writeln(n1)
end.