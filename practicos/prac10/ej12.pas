program ej12;
const
    CANT_LETRAS = ...; { valor entero mayor a 0 }
    CANT_ARTICULOS = ...; { valor entero mayor a 0 }
type
    TIdioma = (es, en, pt);
    TFecha = record
        dia : 1..31;
        mes : 1..12;
        anio : 2001..9999 (* La wikipedia comienza en 2001 *)
    end;
    TNombre = array [1..CANT_LETRAS] of char;
    TArticulo = record
        nombre : TNombre;
        idioma : TIdioma;
        visitas : Integer;
        ultima_act : TFecha;
    end;
    Wikipedia = array [1..CANT_ARTICULOS] OF TArticulo;

function esPosterior(f1, f2: TFecha) : boolean;
begin
    esPosterior := false
    if  ((f1.anio > f2.anio) or
        ((f1.anio = f2.anio) and (f1.mes > f2.mes)) or
        ((f1.anio = f2.anio) and (f1.mes = f2.mes) and (f1.dia > f2.dia))) then
        esPosterior := true
end;

procedure articuloMasReciente(wiki: Wikipedia; idioma: TIdioma; VAR art: TArticulo)
begin
    art := wiki[1];
    for i := 2 to CANT_ARTICULOS do
        if (wiki[i].idioma = idioma) and esPosterior(wiki[i].ultima_act, art.ultima_act) then
            art := wiki[i]
end;

procedure imprimirArticulosMasRecientes (wiki: Wikipedia)
var
    i : TIdioma;
    ultimo_id : TArticulo;
begin
    for i := es to pt do begin
        ArticuloMasReciente(wiki, i, ultimo_id);
        writeln('nombre :' ultimo_id.nombre);
        writeln('idioma :' ultimo_id.idioma);
        writeln('visitas :' ultimo_id.visitas);
        writeln('ultima actualizacion :' ultimo_id.ultima_act)
    end
end;