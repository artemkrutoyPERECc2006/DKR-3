uses crt;
var
  a,b,pog:real;
  n,j:integer;
function f(a:real):real;
begin
  f:=2*power(a,3)+(2)*sqr(a)+(5)*a+(9);
end;
function metod(a, b: Real; n: Integer): Real;
var
  h, x, sum: Real;
  i: Integer;
begin
  h := (b - a) / n;
  for i := 1 to n do
    begin
    x := a + i*h;
    sum += f(x)*h
    end;
  metod :=sum;
end;
function metod2(a,b:real): Real;
begin
  metod2 :=f(b)-f(a);
end;
procedure pogresh;
begin
  pog:=metod2(a,b) - metod(a,b,n);
end;
Procedure prog1;
begin
  write('Верхний предел ');
  readln(a);
  write('Нижний предел ');
  readln(b);
  write('Колличество прямоугольников ');
  readln(n);
  write('Площадь фигуры ',metod(a,b,n));
  writeln();
  pogresh;
  write('Погрешность ',pog);
  writeln();
end;

begin  
repeat
ClrScr;
WriteLn('Поиск по какой то там теореме математической прямоугольника - 1');
WriteLn('Exit - 0');
Write('Select program: ');
ReadLn(n);
Case n of
1: prog1;
end;
until j = 0;
end.