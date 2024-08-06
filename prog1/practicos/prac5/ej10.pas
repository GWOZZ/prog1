program ej10;
var
	num, expo: integer;
begin
	write('Ingrese un número natural positivo: ');
	readln(num);
	write(num);
	expo := 0;
	while num mod 2 = 0 do
	begin
			num := num div 2;
			expo := expo + 1
	end;
	writeln(' = 2^', expo, ' * ', num)		
end.