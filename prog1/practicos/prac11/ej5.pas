program ej5;

type
    Nat = 0..MaxInt;
    Err = (diverr, reserr, argerr);
    Nerr = record
        case error : boolean of
            true : (tipoErr : Err);
            false : (n : Nat);
        end;

procedure division (a, b: Nerr; var resu: Nerr);
begin
    if (a.error = b.error = false) and (b.n <> 0) then begin
        resu.error := false;
        resu.n := a div b
    end
    else begin
        resu.error := true;
        if (a.error = true) or (b.error = true) then
            resu.tipoErr := argerr
        else
            resu.tipoErr := diverr
    end
end;

procedure resta (a, b: Nerr; var resu: Nerr);
begin
    if (a.error = b.error = false) and (a > b) then begin
        resu.error := false;
        resu.n := a - b
    end
    else begin
end;