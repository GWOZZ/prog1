program ej10b;
var
    num, i, j, fin : int64;

function primo(num : int64) : boolean;
var
    i : int64;
begin
    i := 2;
    while (i <= trunc(sqrt(num))) and (num mod i <> 0) do
        i := i + 1;
    if (num mod i <> 0) or (num = 2) then 
        primo := true
    else
        primo := false
end;

function multiplicidadFactor(numero, factor : int64) : int64;
{ pre: numero, factor > 0 }
var
    contador : int64;
begin
    contador := 0;
    if factor <> 1 then
        while (numero mod factor = 0) do begin
            numero := numero div factor;
            contador := contador + 1
        end;
    multiplicidadFactor := contador
end;

function maxfactorprimo(num: int64): int64;
var
  i, maxprimo: int64;
begin
    maxprimo := -1;
    while (num mod 2 = 0) do begin
        maxprimo := 2;
        num := num div 2;
    end;
    for i := 3 to trunc(sqrt(num)) do 
        while (num mod i = 0) do begin
            maxprimo := i;
            num := num div i;
        end;
    if (num > 2) then
        maxprimo := num;
    maxfactorprimo := maxprimo;
end;

begin
    read(num);
    while num <> -1 do begin
        write(num, ' = ');
        if primo(num) then
            write(num)
        else begin
            fin := maxfactorprimo(num);
            i := 2;
            while i < fin do begin
                if primo(i) then begin
                    j := multiplicidadFactor(num, i);
                    while j > 0 do begin
                        write(i, ' * ');
                        j := j - 1;
                    end;
                end;
                i := i + 1
            end;
            for j := 2 to multiplicidadFactor(num, fin) do
                write(fin, ' * ');
            write(fin)
        end;
        writeln;
        read(num)
    end
end.