program ej8b;
var
    calif : char;
begin
    case calif of
        'D', 'F' : writeln('Trabajo deficiente.');
        'B', 'C' : writeln('Buen trabajo.');
        'A' : writeln('Trabajo excelente.');
    end;
end.
