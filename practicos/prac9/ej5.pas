program ej5;
const 
    M = 5; {valor mayor estricto a 1}
    N = 6; {valor mayor estricto a M}
type
    CadenaM = array [1..M] of char;
    CadenaN = array [1..N] of char;

function indiceSubCadena (arrM : CadenaM; arrN : CadenaN) : integer;
var
    i, j: integer;
    ocurre : boolean;
begin
    ocurre := false;
    i := 1;
    repeat
        j := 1;
        while (arrN[i + j - 1] = arrM[j]) and (j <= M) do
            j := j + 1;
        if j > M then
            ocurre := true
        else
            i := i + 1
    until (i > N) or ocurre;
    if not ocurre then
        indiceSubCadena := 0
    else
        indiceSubCadena := i
end;

procedure leerCadenaM(var cadM : CadenaM);
var 
    i : integer;
begin
    for i := 1 to M do
        read(cadM[i]);
    writeln()
end;

procedure leerCadenaN(var cadN : CadenaN);
var 
    i : integer;
begin
    for i := 1 to N do
        read(cadN[i]);
    writeln()
end;

var
    cadM : cadenaM;
    cadN : CadenaN;
    pos : integer;
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