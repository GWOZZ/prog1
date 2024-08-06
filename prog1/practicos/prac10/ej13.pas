const
    CANT_SALONES = ...; { valor entero mayor a 0 }
    MAX_PIZARRONES = ...; { valor entero mayor a 0 }
type
    TSalon = record
        asientos : Integer;
        pizarrones : 1..MAX_PIZARRONES;
        hayProyector : Boolean;
    end;
    TFacultad = array [1..CANT_SALONES] of TSalon;

procedure informeSalones(facu: TFacultad);
begin
    for i := 1 to CANT_SALONES do begin
        writeln('Salon ', i);
        writeln('Asientos: ', facu[i].asientos);
        writeln('Pizarrones: ', facu[i].pizarrones);
        write('Proyector: ');
        if facu[i].hayProyector then 
            writeln('si') 
        else
            writeln('no');
        writeln()
    end
end;

procedure salonMasAsientos (facu: TFacultad; var indSalon: Integer; var maxAsientos: Integer);
var max : integer;
begin
    indSalon := 1;
    maxAsientos := facu[1].asientos;
    i := 2;
    repeat
        if facu[i].asientos > maxAsientos then begin
            maxAsientos := facu[i].asientos;
            indSalon := i
        end;
        i := i + 1
    until i > CANT_SALONES
end;

function primerSalonSinAsientos (facu: TFacultad) : Integer;
begin
    primerSalonSinAsientos := 0;
    i := 1;
    repeat
        if facu[i].asientos = 0 then
            primerSalonSinAsientos := i
        else i := i + 1
    until (primerSalonSinAsientos <> 0) or (i > CANT_SALONES)
end;