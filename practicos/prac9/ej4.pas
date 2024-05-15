program ej4;
const
    K = 10; {valor mayor estricto a 1}
type
    arrK = array [1..K] of integer;
    matK = array [1..K] of arrK;

procedure cargarMatriz(var matriz : matK);
var 
    i, j : integer;
begin
    for i := 1 to K do
        for j := 1 to K do
            read(matriz[i][j]);
    writeln()
end;

procedure cambioFilas(var matriz : matK; m, n : integer);
var 
    tmp : arrK;
begin
    tmp := matriz[m];
    matriz[m] := matriz[n];
    matriz[n] := tmp
end;

var
    matriz : matK;
    m, n, i, j : integer;
begin
    writeln('Ingrese los valores a cargar en la matriz de ', K, ' x ', K, ':');
    cargarMatriz(matriz);
    writeln('Ingrese las filas a cambiar:');
    read(m, n);
    cambioFilas(matriz, m, n);
    writeln('La nueva matriz es: ');
    for i := 1 to K do begin
        for j := 1 to K do
            write(matriz[i][j], ' ');
        writeln()
    end
end.