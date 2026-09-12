2.01 Для каждого из следующих выражений определите его значение и тип:

a) 2+3 -> 5, integer
b) 2+3*10 -> 32, integer
c) 5-(6-7) -> 6, integer
d) 18/6 -> 3.0, real
e) 15/6 -> 2.5, real
f) 18 div 6 -> 3, integer
g) 18 mod 6 -> 0, integer
h) 17 div 3 -> 5, integer
i) 17 mod 3 -> 2, integer
j) 4 mod 7 -> 4, integer
k) 2/1 + 3/1 -> 5.0, real
l) 3 < 4 -> true, boolean
m) 2 = 1.0 + 1.0 -> true, boolean
n) 3 <> 4-1 -> false, boolean

2.02. Какие значения будут в переменных a и b, имеющих тип integer, после выполнения следующих присваиваний?
a := 3;
b := 5;
a := b;
b := a;

a = 5, b = 5;

2.03. Что напечатает следующая программа?

```
program demo1;
var
    x, y, z: integer;
begin
    x := 5;
    y := 10;
    z := x + y;
    x := z * 3;
    writeln(x)
end.
```

answer: 45

2.04. Переменная x, имеющая тип integer, содержит число 7; какое число она будет содержать после выполнения следующих присваиваний?

```
x := x + 3;
x := 100 - x;
x := 10 * x + x;
```

answer: 990

2.05. Что будет напечатано в результате выполнения следующихфрагментов программы?
a) print 'Hello' 10 times

```
  i := 0;
  while i < 10 do
  begin
    writeln(’Hello’);
    i := i + 1
  end
```

b) print 'Good Bye' 19 times

```
  i := 1;
  while i < 20 do
  begin
    writeln(’Good Bye’);
    i := i + 1
  end
```

c) print 'abrakadabra' 12 times

```
  i := 15;
  while i < 27 do
  begin
    writeln(’abrakadabra’);
    i := i + 1
  end
```

d) print 'foobar' 15 times

```
  i := 40;
  while i > 25 do
  begin
  writeln(’foobar’);
  i := i - 1
  end
```

e) print 'Johny be good!' 9 times

```
  i := 5;
  while i < 104 do
  begin
    writeln(’Johnny be good!’);
    i := i + 10
  end
```

f) print nothing

```
  i := 12;
  while i > 22 do
  begin
    writeln(’abcdefgh’);
    i := i + 1
  end
```

2.06. Что будет напечатано в результате выполнения следующих фрагментов программы?
a) print `Hello` 11 times

```
i := 0;
repeat
writeln(’Hello’);
i := i + 1
until i > 10;
```

b) print `Good Bye` 20 times

```
i := 1;
repeat
writeln(’Good Bye’);
i := i + 1
until i > 20;
```

c) print `abrakadabra` 12 times

```
i := 12;
repeat
writeln(’abrakadabra’);
i := i - 1
until i = 0;
```

d) print `abcdefgh` 1 time

```
i := 12;
repeat
writeln(’abcdefgh’);
i := i + 1
until i < 100;
```

2.07∗. Переменную, которая меняет своё значение на каждой итерации цикла и на основании значения которой принимается решение, продолжать цикл или прекратить, часто называют счётчиком цикла. Как вы считаете, в каких примерах из задач 2.05 и 2.06 переменную i можно с полным на то основанием называть `счётчиком`и что конкретно она считает?

- For every cycle where `counter` change + 1 / -1 and it counts number of iteration

2.08. Вернитесь к задаче 2.05 и те примеры, которые это позволяют, перепишите с использованием цикла for так, чтобы переменная цикла пробегала те же самые значения. Какие из примеров не допус-
кают такого переписывания и почему?

2.05. Что будет напечатано в результате выполнения следующихфрагментов программы?
a) possible

```
  for i := 0 to 10 do
  begin
    writeln(’Hello’);
    i := i + 1
  end
```

b) possible

```
  for i := 1 to 20 do
  begin
    writeln(’Good Bye’);
  end
```

c) possible

```
  for i := 15 to 27 do
  begin
    writeln(’abrakadabra’);
  end
```

d) possible

```
  for i := 40 downto 25 do
  begin
    writeln(’foobar’);
  end
```

e) not possible - counter manipulation more than +-1 not allowed

```
  i := 5;
  while i < 104 do
  begin
    writeln(’Johnny be good!’);
    i := i + 10
  end
```

f) not possible for same output

```
  i := 12;
  while i > 22 do
  begin
    writeln(’abcdefgh’);
    i := i + 1
  end
```

2.09. Каковы значения следующих выражений?
a) `99 and 78` = `1100011 and 1001110` = `1000010` = 66  
b) `99 or 78` = `1100011 or 1001110` = `1101111` = 111
c) `99 xor 78` = `1100011 or 1001110` = `0101101` = 45
d) `not 0` = 1
e) `not -13` = `not 11101` = `00010` = 2
f) `not 177` = `not 10110001` = `01001110` = 64 + 8 + 4 + 2 = 78
g) `1 shl 7` = `00000001 shl 7` = `10000000`= 128
h) `7 shl 2` = `00000111 shl 2` = `00011100`= 4 + 8 + 16 = 28
i) `255 shr 4` = `11111111 shr 4` = `00001111` = 1 + 2 + 4 + 8 = 15
j) `240 shr 3` = `11110000 shr 3` = `00011110` = 2 + 4 + 8 + 16 = 30
k) `42 shr 3` = `00101010 shr 3` = `00000101` = 5
l) `-2 shl 2` = `11111110 shl 2` = `11111000` - 1 = ^`11110111` = `00001000` = -8

2.10. Переменные x и y имеют тип longword (32-битное беззнако-вое целое). Какие в них будут значения после выполнения следующихоператоров?

```
  x := $abcdef57;
  y := $12346891;
  x := ((x shr 8) and $ffff0000) or ((y shl 8) and $ffff);
  y := ((y and $ff0000) shr 16) or ((y and $ff) shl 8);
```

Напомним, знак $ в Паскале означает шестнадцатеричную систему счисления; ответ дайте также в виде шестнадцатеричных чисел

```
   x := ((x shr 8) and $ffff0000) or ((y shl 8) and $ffff);

   x shr 8 := $00abcdef
   $00abcdef and $ffff0000 := $00ab0000
   y shl 8 := $34689100
   $34689100 and $0000ffff = $00009100
   $00ab0000 or $00009100 = $00ab9100
   x := $00ab9100
```

```
  y := ((y and $ff0000) shr 16) or ((y and $ff) shl 8);

  $12346891 and $00ff0000 := $00340000
  $00340000 shr 16 := $00000034
  $12346891 and $000000ff := $00000091
  $00000091 shl 8 := $00009100
  $00000034 or $00009100 := $00009134
  y := $00009134
```

2.11. Напишите функцию, которая принимает параметром число типа longint и возвращает целое число - количество единиц в двоичном представлении параметра.

```
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
```

2.12. Задействовав процедуру PrintChars, разобранную в §2.3.1 в качестве одного из примеров, напишите две программы, по смыслу аналогичные программе DiamondProc (эта программа разобрана в том же параграфе чуть раньше) и точно так же, как она, использующие построчный вывод, но немного отличающиеся от неё: пусть одна из них печатает ромбик, он же алмаз, заполненный звёздочками,а вторая алмаз из пробелов на фоне, заполненном звёздочками
Обязательно убедитесь, что в вашей программе нет одинаковых фрагментов кода, если они есть вынесите их в процедуры.

заполненый звездочками алмаз: filled_diamond.pas
заполненый пробелами алмаз: stamp_diamond.pas

2.13. Напишите программу, запрашивающую у пользователя два числа: высоту алмаза и желаемое количество алмазов, и выдающая (построчно!) фигуру из звёздочек, содержащую заданное число алмазов заданной высоты, расположенных горизонтально и отстоящих друг от друга на один пробел.

решение: multiple_diamond.pas
