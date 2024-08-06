program ej9b;
var
    a, b : integer;

function multiplo(m, n : integer) : boolean;
{ pre: m, n > 0 }
begin
    if (n mod m = 0) or (m mod n = 0) then
        multiplo := true
    else
        multiplo := false
end;

begin
    read(a);
    while a <> -1 do begin
        readln(b);
        if multiplo(a, b) then
            writeln('Sí.')
        else
            writeln('No.');
        read(a)
    end
end.