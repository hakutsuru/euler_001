{ Project Euler <https://projecteuler.net>
  Problem: 1
  Solution: 2
  Author: Sean Broderick <hakutsuru@mac.com>
  Date: 2015-08-14
}

var
  args: string;
  threshold: int64;
  multiple_of_3: boolean;
  sum: int64;
  i: int64;

begin
  {obtain threshold}
  args := ParamStr(1);
  val(args, threshold, i);

  {calculate sum}
  sum := 0;
  {multiples of three}
  i := 3;
  while i <= threshold do
  begin
    sum := sum + i;
    i := i + 3;
  end;
  {multiples of five - avoid double-counting}
  i := 5;
  while i <= threshold do
  begin
    multiple_of_3 := ((i mod 3) = 0);
    if not multiple_of_3 then
      sum := sum + i;
    i := i + 5;
  end;

  {print result}
  writeln(sum);
end.


{
  opt/euler/pascal$ fpc pe_001_02.pas
  $ ./pe_001_02 9
  23
  $ ./pe_001_02 999
  233168
  $ ./pe_001_02 999999
  233333166668
}
