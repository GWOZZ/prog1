program ej7;
var 
    valor, saldo : real;
    tipo : char;
begin
    readln(saldo);
    read(tipo);
    while tipo <> 'X' do
    begin
        readln(valor);
        if tipo = 'D' then
            saldo := saldo + valor
        else
            saldo := saldo - valor;
        read(tipo)
    end;
    writeln('El saldo final es ', saldo:0:2)
end.