program ej3;
const
    N = ...; {valor mayor estricto a 1}
type
    CadenaN = array [1..N] of integer;

function cantMayores(cadn : CadenaN; num : integer) : integer;
var i, cant : integer;
begin
    cant := 0;
    for i := 1 to N do
        if cadn[i] > num then
            cant := cant + 1;
    cantMayores := cant
end;

function ordenado(cadn : CadenaN) : boolean;
var i : integer;
begin
    i := 2;
    ordenado := true;
    repeat
        if cadn[i] < cadn[i-1] then 
            ordenado := false
        else
            i := i + 1
    until ordenado := false or i = N + 1
end;

procedure maxValorPos(cadn : CadenaN; var valor, pos : integer);
var i : integer;
begin
    valor := cadn[1];
    pos := 1;
    for i := 2 to N do
        if cadn[i] > valor then begin
            valor := cadn[i];
            pos := i
        end
end;


