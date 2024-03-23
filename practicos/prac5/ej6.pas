program ej6;
var
    c1, c2 : char;
    repetidas: boolean;
begin
    repetidas := false;
    write('Ingrese un texto: ');
    read(c1);
    while (c1 <> '$') and (c2 <> '$') do
    begin
        read(c2);
        if c1 = c2 then
        begin
            if not repetidas then
                write('Las consonantes y vocales duplicadas son: ');
                repetidas := true;
            write(c1, c1, ' ');
        end;
        read(c1);
        if c1 = c2 then
        begin
            if not repetidas then
                write('Las consonantes y vocales duplicadas son: ');
                repetidas := true;
            write(c1, c1, ' ');
        end;
    end;
    if repetidas = false then 
        write('No hay consonantes ni vocales duplicadas');
    writeln()
end.