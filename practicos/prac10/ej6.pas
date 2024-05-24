program ej6;
type
    TipoMes = (enero, febrero, marzo, abril, mayo, junio, julio, agosto, setiembre, octubre, noviembre, diciembre);
    TipoMesRango = 1..12;

procedure EscribirMes(mes : TipoMes);
begin
    case mes of
        enero:      writeln('Enero');
        febrero:    writeln('Febrero');
        marzo:      writeln('Marzo');
        abril:      writeln('Abril');
        mayo:       writeln('Mayo');
        junio:      writeln('Junio');
        julio:      writeln('Julio');
        agosto:     writeln('Agosto');
        setiembre:  writeln('Setiembre');
        octubre:    writeln('Octubre');
        noviembre:  writeln('Noviembre');
        diciembre:  writeln('Diciembre');
    end
end;

procedure Numero2Mes(num : TipoMesRango; var mes : TipoMes);
begin
    mes := TipoMes(num - 1);
end;

var
    num : TipoMesRango;
    mes : TipoMes;
begin
    readln(num);
    Numero2Mes(num, mes);
    EscribirMes(mes)
end.