program ej12;
const
    pi = 3.14;
    g = 9.8;
var
    ej : string;
    l, a, b, c, s: real;
begin
    write('Elija la parte del ejercicio: ');
    readln(ej);
    case ej of
        'i', 'I', '1': 
            begin
                write('Ingrese la longitud del péndulo: ');
                readln(l);
                writeln('El período de un péndulo de longitud ', l:0:2, ' es igual a ', 2 * pi * sqrt(l/g):0:2)
            end;
        'ii', 'II', '2':
            begin
                write('Ingrese las longitudes de los lados: ');
                readln(a, b, c);
                s := (a + b + c)/2;
                writeln('El área de un triángulo de lados ', a:0:2, ', ', b:0:2, ' y ', c:0:2, ' es igual a ', sqrt(s * (s - a) * (s - b) * (s - c)):0:2)
            end;
        else
            writeln('Ejercicio invalido');
    end;
end.