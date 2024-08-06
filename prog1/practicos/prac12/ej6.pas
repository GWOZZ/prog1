program ej6;

type
    Positivo = 1..MaxInt;
    ListaInt = ^TCelda;
    TCelda = record
        info : integer;
        sig : ListaInt
    end;

function multiplos(k : Positivo; num : Positivo) : ListaInt;
var
    inicio, p : ListaInt;
begin
    new(inicio);
    p := inicio;
    while k > 1 do begin
        p^.info := num * k;
        new(p^.sig)
        p := p^.sig;
        k := k - 1
    end;
    p^.info := num;
    p^.sig := nil;
    multiplos := inicio
end;

function copia(l : ListaInt) : ListaInt;
var
    p, rec, inicio : ListaInt;
begin
    inicio := nil;
    if l <> nil then begin
        p := l;
        new(inicio);
        rec := inicio;
        while p^.sig <> nil do begin
            rec^.info := p^.info;
            new(rec^.sig);
            rec := rec^.sig;
            p := p^.sig
        end;
        rec^.info := p^.info;
        rec^.sig := nil;
    end;
    copia := inicio
end;

function invertir(l : ListaInt) : ListaInt;
begin

end;

procedure invertir(var l : ListaInt);
begin
end;

procedure concatenar(var l1 : ListaInt; l2 : ListaInt);
begin
end;

procedure partir(k : Positivo; l : ListaInt; var l1,l2 : ListaInt);
begin
end;

function IntercalarListas (l1, l2: ListaEnteros) : ListaEnteros;
begin
end;