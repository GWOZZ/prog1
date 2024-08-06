program ej1;
var i, j : integer;
begin
    write('(a) ');
    for i := 1 to 3 do
        for j := i+1 to 3 do
            write(i, j);
    writeln;
    write('(b) ');
    for i := 1 to 3 do
        write(i, i+1);
    writeln;
    write('(c) ');
    for i := 1 to 4 do
        if (i = 1) or (i = 4) then
            write (i)
        else
            write(i,i);
    writeln
end.