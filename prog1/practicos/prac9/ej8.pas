program ej8;
const
    N = ...; {valor mayor estricto a 1}
type
    Digito = '0'..'9';
    Digitos = array [1..N] of Digito;

procedure leerArreglo(var a : Digitos);
var 
    i : integer;
begin
    for i := 1 to N do
        read(a[i]);
    writeln()
end;

function pow(a, b : integer) : integer;
var
    i : integer;
begin
    pow := 1
    if b <> 0 then
        for i := 1 to b do
            pow := pow * a
end;

function conversion(a:Digitos) : integer;
var
    valor : integer;
begin
    valor := 0;
    for i := 1 to N do
        valor := valor + (ord(a[i]) - ord('0')) * pow(10, (N - i + 1));
    conversion := valor
end;

var
    arr : Digitos;
begin
    write('Ingrese los ', N,' digitos de su arreglo: ');
    leerArreglo(arr);
    writeln(conversion(arr))
end.