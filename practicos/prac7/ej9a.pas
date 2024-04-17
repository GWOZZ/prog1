function multiplo(m, n : integer) : boolean;
{ pre: m, n > 0 }
begin
    if (n mod m = 0) or (m mod n = 0) then
        multiplo := true
    else
        multiplo := false
end;