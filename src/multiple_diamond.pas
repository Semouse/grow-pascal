program multiple_diamond;

procedure PrintChars(ch: char; count: integer);
var
    i: integer;
begin
    for i := 1 to count do
    write(ch)
end;

procedure PrintLineOfDiamond(k, n, q: integer);
var
    i: integer;
begin
    for i := 1 to q do
    begin
        PrintChars(' ', n + 1 - k);
        write('*');
        if k > 1 then
        begin
            PrintChars(' ', 2 * k - 3);
            write('*')
        end;
        PrintChars(' ', n + 1 - k);
        if i < q then
            write(' ');
    end;
    writeln
end;

var
    h, n, k, q: integer;
begin
    repeat
        write('Enter the diamond''s height (positive odd): ');
        readln(h)
    until (h > 0) and (h mod 2 = 1);

    repeat
        write ('Enter quantity of the diamonds (positive): ');
        readln(q)
    until (q > 0);

    n := h div 2;
    for k := 1 to n + 1 do
        PrintLineOfDiamond(k, n, q);
    for k := n downto 1 do
        PrintLineOfDiamond(k, n, q)
end.
