program ej2;
const 
    MAXPERSONAS = 20; {Entero >0}
    MAXCAD = 20; {Entero >0}
type
    Cadena = record
                letras : array [1 .. MAXCAD] of char;
                largo : 0 .. MAXCAD; {tope}
             end;
    Fecha = record
                dia : 1 .. 31;
                mes : 1 .. 12;
                anio : 0 .. maxint;
            end;
    Persona = record 
                nombre : Cadena;
                FechaNac : Fecha;
                indMadre, indPadre : 0 .. MAXPERSONAS;
              end;
    Familia = record
                pers : array [1 .. MAXPERSONAS] of Persona;
                tope : 0 .. MAXPERSONAS;
              end;

function cadenasIguales (cad1, cad2 : Cadena) : Boolean;
var i : integer;
begin
    if cad1.largo = cad2.largo then
    begin
        i := 1;
        while (cad1.letras[i] = cad2.letras[i]) and (i <= cad1.largo) do
            i := i + 1;
        cadenasIguales := (i > cad1.largo)    
    end
    else
        cadenasIguales := false
end;

procedure desplegarCadena (cad : Cadena);
var i : integer;
begin
    for i := 1 to cad.largo do
        write(cad.letras[i])
end;

procedure cargarCadena (cad : Cadena);
var i : integer;
    letra : char;
begin
    i := 1;
    read(letra);
    while (letra <> chr(10)) and (letra <> chr(13)) do begin
        cad.letras[i] := letra;
        read(letra);
        i := i + 1
    end;
    cad.largo := i - 1
end;

procedure antepasados (usted : Cadena; historia : Familia);
var Madre, Padre, i : integer;
begin
    i := 1;
    while (i <= historia.tope) and not cadenasIguales (usted, historia.pers[i].nombre) do
        i := i + 1;
    if (i <= historia.tope) then
    begin
        Madre := historia.pers[i].indMadre;
        Padre := historia.pers[i].indPadre;
        if Madre > 0 then
            with historia.pers[Madre] do begin
                desplegarCadena (nombre);
                writeln(':');
                writeln(FechaNac.dia, '/', FechaNac.mes, '/', FechaNac.anio)
            end
        else writeln ('Madre no registrada.');
        if Padre > 0 then
            with historia.pers[Padre] do begin
                desplegarCadena(nombre);
                writeln(':');
                writeln(FechaNac.dia, '/', FechaNac.mes, '/', FechaNac.anio)
            end
        else writeln('Padre no registrado.')
    end  
end;

var 
    opcion, ind: integer;
    fam : Familia; 
    sexo : char;

begin 
    read(ind);
    fam.tope := 0;
    writeln('Seleccione una opcion:');
    writeln('1. Cargar informacion.');
    writeln('2. Verificar antepasados');
    writeln('3. Verificar familia');
    readln(opcion);
    case opcion of 
        1 : with fam.pers[fam.tope + 1] do begin
                writeln('Ingrese nombre: ');
                cargarCadena(nombre);
                writeln();
                writeln('Ingrese fecha de nacimiento (DD MM AAAA): ');
                read(FechaNac.dia);
                read(FechaNac.mes);
                readln(FechaNac.anio);
                writeln('Ingrese indice del padre (de no estar ingresado 0)');
                readln(indPadre);
                writeln('Ingrese indice de la madre (de no estar ingresado 0)');
                readln(indMadre);
                {writeln('Ingrese sexo (M o F):');
                readln(sexo);
                writeln('Ingrese indices de hijos (0 de no estar ingresados): ');
                read(ind);
                while ind <> 0 do
                if sexo = 'M' then
                    fam.pers[readln()].indPadre := fam.tope + 1;
                fam.tope := fam.tope + 1;}
            end;
    end;
end.