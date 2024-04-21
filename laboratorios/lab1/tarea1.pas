procedure leerPalabraLargo (var largo : integer; var fin : boolean);
var
    caracter :  char;
begin
    fin := false;
    largo := 0;
    read(caracter);
    repeat
        read(caracter);
        largo := largo + 1
    until (caracter = SEPARADOR) or (caracter = FINALIZADOR);
    if caracter = FINALIZADOR then
        fin := true
end;

procedure leerOracionDatos (var cantPalabras, masLarga, masCorta : integer);
var
    max, min, largo : integer;
    fin : boolean;
begin
    fin := false;
    leerPalabraLargo(largo, fin);
    max := largo;
    min := largo;
    cantPalabras := 1;
    while fin = false do begin
        leerPalabraLargo(largo, fin);
        cantPalabras := cantPalabras + 1;
        if largo < min then min := largo
        else if largo > max then max := largo
    end;
    masCorta := min;
    masLarga := max
end;