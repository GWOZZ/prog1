program ej5;
const 
    M = 3; {M > 0}
    N = 10; {N > M}
type
    CadenaM = array [1..M] of char;
    CadenaN = array [1..N] of char;

function indiceSubCadena (arrM : CadenaM; arrN : CadenaN) : integer;
var
    i, j: integer;
    arrMtmp : CadenaM;
begin
    i := 1;
    repeat
        j := 0;
        repeat
            j := j + 1;
            arrMtmp[j] := arrN[j + i - 1]
        until (arrMtmp[j] <> arrM[j]) or (j = M);
        if arrMtmp[j] <> arrM[j] then
            i := i + 1
    until (arrMtmp = arrM) or (i > N - M + 1);
    if arrMtmp = arrM then
        indiceSubCadena := i
    else
        indiceSubCadena := 0
end;

procedure leerCadenaM(var cadM : CadenaM);
var 
    i : integer;
begin
    for i := 1 to M do
        read(cadM[i]);
    readln
end;

procedure leerCadenaN(var cadN : CadenaN);
var 
    i : integer;
begin
    for i := 1 to N do
        read(cadN[i]);
    readln
end;

var
    cadM : cadenaM;
    cadN : CadenaN;
    pos, i : integer;
begin
    write('Ingrese los ', M, ' caracteres de la cadena de largo M: ');
    leerCadenaM(cadM);
    write('Ingrese los ', N, ' caracteres de la cadena de largo N: ');
    leerCadenaN(cadN);
    pos := indiceSubCadena(cadM, cadN);
    if pos <> 0 then
        writeln('La cadena se encuentra a partir de la posición ', pos)
    else
        writeln('La cadena no se encuentra')
end.