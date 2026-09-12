program filled_diamond;

procedure PrintChars(ch: char; count: integer);
var
    i: integer;
begin
    for i := 1 to count do
    write(ch)
end;

procedure PrintLineOfDiamond(k, n: integer);
begin
    PrintChars(' ', n + 1 - k);
    PrintChars('*', 2 * k - 1);
    PrintChars(' ', n + 1 - k);
    writeln
end;

var
    h, n, k: integer;
begin
    repeat
        write('Enter the diamond''s height (positive odd): ');
        readln(h)
    until (h > 0) and (h mod 2 = 1);

    n := h div 2;
    for k := 1 to n + 1 do
        PrintLineOfDiamond(k, n);
    for k := n downto 1 do
        PrintLineOfDiamond(k, n)
end.
