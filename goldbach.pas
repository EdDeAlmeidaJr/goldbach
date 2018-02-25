program Gold01;

function Si(i: Integer) : Integer;
begin
    Si := 3 + (2 * i);
end;


function Gn(n: Integer) : Integer;
begin
    Gn := (n - 6) div 2;
end;

function MaxIndex(gn: Integer): Integer;
begin
	MaxIndex := (gn - 1) div 2;
	if ((gn mod 2) = 0) then MaxIndex := gn div 2;
end;

function IsPrime(n: Integer) : Boolean;
begin
	IsPrime := True;
end;

procedure Table(n: Integer);
var
	g, k, j, d, s1, s2: Integer;
begin
	g := Gn(n);
	k := MaxIndex(g);
	for j := 0 to k do
	begin
		s1 := Si(j);
		d  :=  g - j;
		s2 := Si(d);
		WriteLn('s(', j:2, ') = ', s1:4, '  <=>  s(', d:2, ') = ', s2:4);
	end
end;

procedure Tables(n: Integer);
var
	i, g: Integer;
begin
	i := 6;
	while (i <= n) do
    begin
        g := Gn(i);
        WriteLn;
        WriteLn('n = ',i);
        WriteLn('G(', i, ') = ', g);
        WriteLn;
        Table(i);
        WriteLn;
        WriteLn('=========================================');
        i := i + 2;
    end	
end;

begin
  
  Tables(ParamStr());
end.

