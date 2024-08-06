const 
    N = ...; {valor mayor estricto a 1}
type
    Matriz = array [1..N, 1..N] of integer;

procedure transpuestaMatrizAB(a : Matriz; var b : Matriz);
begin
    for i := 1 to N do
        for j := 1 to N do
            b[i, j] := a[j, i] 
end;

procedure transpuestaMatrizA(var a : Matriz);
var 
    tmp : integer;
begin
    for i := N downto 2 do
        for j := 1 to i - 1 do begin
            tmp := a[i, j];
            a[i, j] := a[j, i];
            a[j, i] := tmp
        end;
end;