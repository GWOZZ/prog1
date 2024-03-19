program ej11;
var
    n, d, i: integer;
    check: boolean;
begin
    write('Ingrese un entero de 4 digitos: ');
    readln(n);
    write('Ingrese un entero de 1 digitos: ');
    readln(d);
    check := false;
    for i := 0 to 3 do
        check := (check) or (n div round(exp(i * ln(10))) = d);
    if check then
        begin
						writeln(n);
            for i := 3 downto 0 do
								begin
							      if n div round(exp(i * ln(10))) mod 10 = d then
				                write('+')
								    else
								        write(' ');
				       end;
				end;
		else
				writeln(d, ' no esta en ', n)
end.