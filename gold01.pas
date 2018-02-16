program Gold01;

var
    i, j, k,
    n, g, d,
    s1, s2 : integer;


function Si(i: integer) : integer;
begin
    Si := 3 + (2 * i);
end;


function Gn(n: integer) : integer;
begin
    Gn := (n - 6) div 2;
end;


begin
    for i := 3 to 100 do
    begin
        n := 2 * i;
        g := Gn(n);
        if ((g mod 2) = 0) then
            begin
                k := g div 2;
            end
        else
            begin
                k := (g - 1) div 2;
            end;
        WriteLn;
        WriteLn('n = ',n);
        WriteLn('G(', n, ') = ', g);
        WriteLn;
        for j := 0 to k do
        begin
            s1 := Si(j);
            d  :=  g - j;
            s2 := Si(d);
            WriteLn('s(', j:2, ') = ', s1:4, '  <=>  s(', d:2, ') = ', s2:4);
        end;
        WriteLn;
        WriteLn('=========================================');
    end
end.

