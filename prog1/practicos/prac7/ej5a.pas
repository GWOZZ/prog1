procedure corrimiento(var a, b, c: integer);
var
    aux : integer;
begin
    aux := a;
    a := c;
    c := b;
    b := aux;    
end;