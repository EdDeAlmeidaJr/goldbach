program Gold01;

var
    i, j: integer;


function s(i: integer) : integer;
begin
    s := 3 + (2*i);
end;


function g(n: integer) : integer;
begin
    g := (n - 4) div 2;
end;


begin
    for i := 1 to 50 do
    begin
	j := (2*i) + 2;
	WriteLn('n = ', j:3, '  =>  ', g(j):7);
    end
end.

