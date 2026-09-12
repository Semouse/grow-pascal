program binary;

procedure GetValidLongint(var output: longint);
var
    input: string;
    error: integer;
begin
    repeat
        write('Enter a number: ');
        readln(input);

        val(input, output, error);

        if error <> 0 then
            writeln('Error: That is not a vaild number. Try again.');
    until error = 0;
end;

function CountSetBits(num: longint): integer;
var
    unsignedNum: longword;
    bitCount: integer;
begin
    bitCount := 0;
    unsignedNum := longword(num);

    while unsignedNum > 0 do
    begin
        if (unsignedNum and 1) = 1 then
            bitCount := bitCount + 1;
        unsignedNum := unsignedNum shr 1;
    end;

    CountSetBits := bitCount;
end;

var
    x: longint;
    count: longint;
begin
    GetValidLongint(x);
    count := CountSetBits(x);
    writeln('The bit pattern for ', x, ' contains ', count, ' set bits.');
end.
