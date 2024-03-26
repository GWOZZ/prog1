program ej11;
var
	n, b, k : integer;
begin
	write('Ingrese número: ');
	readln(n);
	write('Ingrese base: ');
	readln(b);
	k := 0;
	while n >= b do
	begin
		n := n div b;
		k := k + 1
	end;
	writeln('Resultado: ', k)
end.