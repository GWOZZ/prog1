program ej9;
const
    N = 4; {valor mayor estricto a 1}
    SUM = ((N * (N+1)) div 2);
type
    MatrizN = array [1..N, 1..N] of integer;
    ArregloUni = array [1..SUM] of integer;

procedure matriz2arreglo(a : MatrizN; var arreglo : ArregloUni);
var 
    i, j, k : integer;
begin
    k := 1;
    for i := 1 to N do
        for j := i to N do begin
            arreglo[k] := a[i, j];
            k := k + 1
        end
end;

procedure arreglo2matriz(arreglo : ArregloUni; var a : MatrizN);
var 
    i, j, k: integer;
begin
    k := 1;
    for i := 1 to N do
        for j := i to N do begin
            a[i, j] := arreglo[k];
            a[j, i] := arreglo[k];
            k := k + 1
        end
end;

function obtSim(a : ArregloUni; i , j : integer) : integer;
begin
    if i > j then
        obtSim := a[i + (j - 1) * N - ((j - 1) * j) div 2]
    else
        obtSim := a[j + (i - 1) * N - ((i - 1) * i) div 2]
end;

var
    arr : ArregloUni;
    i, j, k : integer;
begin
    k := 1;
    for i := 1 to N do
        for j := i to N do begin
            write('Ingrese valor para [', i, ', ', j, ']: ');
            readln(arr[k]);
            k := k + 1
        end;
    for i := 1 to N do begin
        for j := 1 to N do
            write(obtSim(arr, i, j), ' ');
        writeln();
    end;
    write('Ingrese parejas de coordenadas: ');
    read(i);
    while i <> -1 do begin
        read(j);
        writeln('Coordenadas: ', i, ' ', j);
        writeln('Valor almacenado: ', obtSim(arr, i, j));
        read(i)
    end
end.