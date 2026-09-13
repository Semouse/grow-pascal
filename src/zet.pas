program zet;

procedure PrintChars(ch: char; count: integer);
var
    i: integer;
begin
    for i := 1 to count do
    write(ch)
end;

procedure PrintLine(k, n: integer);
begin
    if (k = 1) or (k = (n div 2 + 1)) or (k = n) then
    begin
        PrintChars('*', n);
    end
    else
    begin
        PrintChars(' ', n - k);
        write('*');
        PrintChars(' ', k - 1);
    end;
    writeln;
end;

var
    h, k: integer;
begin
    repeat
        write('Enter the figure''s height (positive odd and more then 5): ');
        readln(h)
    until (h > 5) and (h mod 2 = 1);

    for k := 1 to h do
        PrintLine(k, h);
end.
