program ej5b;
var
    x, y, z : integer;

procedure corrimiento(var a, b, c: integer);
var
    aux : integer;
begin
    aux := a;
    a := c;
    c := b;
    b := aux;    
end;

begin
    write('Ingrese tres números: ');
    readln(x, y, z);
    corrimiento(x, y, z);
    writeln('El corrimiento es: ', x, ' ', y, ' ', z);
end.