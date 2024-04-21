program principal;

{ Con esta directiva queda incluido el archivo definiciones.pas }
{$INCLUDE definiciones.pas}

{ Con esta directiva queda incluido el archivo tarea1.pas }
{$INCLUDE tarea1.pas}

var
   cantPal, masLarga, masCorta : integer;

begin
   write('Ingrese la oración: ');
   leerOracionDatos(cantPal, masLarga, masCorta);
   writeLn('Tiene ', cantPal:0, ' palabras.');
   writeLn('La palabra más larga tiene ', masLarga:0, ' letras.');
   writeLn('La palabra más corta tiene ', masCorta:0, ' letras.');
end.