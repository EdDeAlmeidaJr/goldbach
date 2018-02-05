program Gold01;

var
    i, j, n: integer;


function s(i: integer) : integer;
begin
    s := 3 + (2 * i);
end;


function g(n: integer) : integer;
begin
    g := (n - 4) div 2;
end;

function Ni(i: integer) : integer;
begin
	Ni:= (2 * i) + 4;
end;

begin
    for i := 1 to 50 do
    begin
		n = Ni(i);	
		WriteLn('i = ', i:6, '=>':8,'n = ',n:6);
    end
end.

