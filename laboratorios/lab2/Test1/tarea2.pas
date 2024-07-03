function todosTienenFormatoEnLinea (tfmt : TipoFormato; ini, fin : RangoColumna; ln : Linea) : boolean;
{   Retorna true solo si todos los caracteres de `ln` entre las columnas `ini` y `fin`, 
    incluídos los extremos, tienen el formato `tfmt`. En otro caso retorna false. 

    Precondiciones: 1 <= ini <= ln.tope
                    1 <= fin <= ln.tope   }
var
    i : integer;
begin
    i := ini;
    while (i <= fin) and ln.cars[i].fmt[tfmt] do
        i := i + 1;
    todosTienenFormatoEnLinea := (i > fin)
end;

procedure aplicarFormatoEnLinea (tfmt : TipoFormato; ini, fin : RangoColumna; var ln : Linea);
{   Aplica el formato `tfmt` a los caracteres de `ln` entre las columnas `ini` y `fin`, incluídos los extremos.
    Si todos los carácteres ya tienen el tipo de formato `tfmt`, en lugar de aplicarlo lo quita.

    Precondiciones: 1 <= ini <= ln.tope
                    1 <= fin <= ln.tope   }
var
    i : RangoColumna; 
    todos : boolean;
begin
    todos := todosTienenFormatoEnLinea(tfmt, ini, fin, ln);
    for i := ini to fin do
        ln.cars[i].fmt[tfmt] := not todos
end;

function contarCaracteresEnTexto (txt : Texto) : integer;
{   Retorna la cantidad de caracteres que tiene el texto `txt`   }
var
    rec1 : Texto;
    contador : integer;
begin
    contador := 0;
    rec1 := txt;
    while rec1 <> nil do begin
        contador := contador + rec1^.info.tope;
        rec1 := rec1^.sig
    end;
    contarCaracteresEnTexto := contador
end;

procedure buscarCadenaEnLineaDesde (c : Cadena; ln : Linea; desde : RangoColumna; var pc : PosibleColumna);
{   Busca la primera ocurrencia de la cadena `c` en la línea `ln` a partir de la columna `desde`. 
    Si la encuentra, retorna en `pc` la columna en la que incia. 

    Precondiciones: 1 <= desde <= ln.tope   }
var
    i, j : integer;
begin
    if c.tope <> 0 then begin
        i := desde;
        j := 0;
        while (ln.tope - (i - 1) >= c.tope) and (j < i - 1 + c.tope) do begin
            j := i;
            while (ln.cars[j].car = c.cars[j - i + 1]) and (j < i + c.tope) do
                j := j + 1;
            i := i + 1
        end;
        pc.esColumna := (j >= i - 1 + c.tope);
        if pc.esColumna then
            pc.col := i - 1;
    end
    else begin
        pc.esColumna := true;
        pc.col := desde
    end
end;

procedure buscarCadenaEnTextoDesde (c : Cadena; txt : Texto; desde : Posicion; var pp : PosiblePosicion);
{   Busca la primera ocurrencia de la cadena `c` en el texto `txt` a partir de la posición `desde`. 
    Si la encuentra, retorna en `pp` la posición en la que incia.
    La búsqueda no encuentra cadenas que ocupen más de una línea.

    Precondiciones: 1 <= desde.linea <= cantidad de líneas 
                    1 <= desde.columna <= tope de línea en desde.linea   } 
var
    contador : integer;
    pc : PosibleColumna;
begin
    txt := ubicarLineaEnTexto(txt, desde.linea);
    contador := desde.linea;
    buscarCadenaEnLineaDesde(c, txt^.info, desde.columna, pc);
    txt := txt^.sig;
    while (txt <> nil) and (not pc.esColumna) do begin
        contador := contador + 1;
        buscarCadenaEnLineaDesde(c, txt^.info, 1, pc);
        if not pc.esColumna then 
            txt := txt^.sig
    end;
    pp.esPosicion := (txt <> nil);
    if pp.esPosicion then begin
        pp.p.linea := contador;
        pp.p.columna := pc.col
    end
end;

procedure insertarCadenaEnLinea (c : Cadena; columna : RangoColumna; var ln : linea; var pln : PosibleLinea);
{   Inserta la cadena `c` a partir de la `columna` de `ln`, y desplaza hacia la derecha 
    a los restantes caracteres de la línea. Los carácteres insertados toman el formato 
    del carácter que ocupaba la posición `columna` en la línea. 
    Si la columna es `ln.tope+1`, entonces queda sin formato.
    Si (c.tope + ln.tope) supera `MAXCOL`, los carácteres sobrantes se retornan (en
    orden) en la posible línea `pln`.
 
    Precondiciones:  1 <= columna <= ln.tope+1
                   columna <= MAXCOL
                   c.tope + columna <= MAXCOL   }  
var
    tfmt : TipoFormato;
    i, j : integer;
begin
    pln.esLinea := (c.tope + ln.tope > MAXCOL);
    if pln.esLinea then begin
        pln.l.tope := ln.tope + c.tope - MAXCOL;
        j := 0;
        for i := ln.tope downto columna do begin
            pln.l.cars[pln.l.tope - j] := ln.cars[i];
            j := j + 1
        end;
        for i := (pln.l.tope - j) downto 1 do begin
            pln.l.cars[i].car := c.cars[c.tope - i + 1];
            pln.l.cars[i].fmt := ln.cars[columna].fmt
        end;
        for i := 1 to (c.tope - j) do begin
            ln.cars[columna + i - 1].car := c.cars[i];
            ln.cars[columna + i - 1].fmt := ln.cars[columna].fmt
        end
    end
    else begin
        for i := ln.tope downto columna do
            ln.cars[i + c.tope] := ln.cars[i];
        j := 1;
        for i := columna to (columna + c.tope - 1) do begin
            ln.cars[i].car := c.cars[j];
            if columna <= ln.tope then
                ln.cars[i].fmt := ln.cars[columna].fmt
            else
                for tfmt := Neg to Sub do
                    ln.cars[i].fmt[tfmt] := false;
            j := j + 1
        end;
        ln.tope := ln.tope + c.tope
    end
end;

procedure insertarLineaEnTexto (ln : Linea; nln : integer; var txt : Texto);
{   Inserta la línea `ln` en la posición `nln` del texto `txt`.

    Precondiciones: 1 < nln <= cantidad de líneas del texto + 1   }
var
    aux1, aux2 : Texto;
    lineastexto : integer; 
begin
    aux1 := txt;
    lineastexto := 0;
    while aux1 <> nil do begin
        aux1 := aux1^.sig;
        lineastexto := lineastexto + 1
    end;
    if nln = lineastexto + 1 then begin
        new(aux1);
        ubicarLineaEnTexto(txt, lineastexto)^.sig := aux1;
        aux1^.info := ln
    end
    else begin
        aux1 := ubicarLineaEnTexto(txt, nln);
        new(aux2);
        ubicarLineaEnTexto(txt, nln - 1)^.sig := aux2;
        aux2^.info := ln;
        aux2^.sig := aux1
    end
end;