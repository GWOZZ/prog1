const
    M = ...; {valor mayor estricto a 1}
    N = ...; {valor mayor estricto a 1}
    P = ...; {valor mayor estricto a 1}
type
    RangoM = 1..M;
    RangoN = 1..N;
    RangoP = 1..P;
    MatrizMN = array [RangoM, RangoN] of integer;
    MatrizNP = array [RangoN, RangoP] of integer;
    MatrizMP = array [RangoM, RangoP] of integer;

procedure productoMatrices(a : MatrizMN; b : MatrizNP; var c : MatrizMP);
var
    tmp, i, j, k : integer;
begin
    for i := 1 to M do
        for j := 1 to P do begin
            tmp := 0;
            for k := 1 to N do 
                tmp := tmp + a[i, k] * b[k, j];
            c[i, j] :=  tmp
        end;
end;