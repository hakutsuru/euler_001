{ Project Euler <https://projecteuler.net>
  Problem: 1
  Solution: 3
  Author: Sean Broderick <hakutsuru@mac.com>
  Date: 2015-08-14
}

var
  args: string;
  threshold: int64;
  sum03: int64;
  sum05: int64;
  sum15: int64;
  sum: int64;

function summation_to_number(num: int64): int64;
{classic formula: ((n^2)/2) + (n/2)}
begin
  summation_to_number := (((num + 1) * num) div 2);
end;

begin
  {obtain threshold}
  {use sum for error to avoid new variable}
  args := ParamStr(1);
  val(args, threshold, sum);

  {obtain sum}
  sum03 := (3 * summation_to_number(threshold div 3));
  sum05 := (5 * summation_to_number(threshold div 5));
  sum15 := (15 * summation_to_number(threshold div 15));
  {adding the series of 3 multiples and 5 multiples
   effectively adds duplicates of 15 multiples}
  sum := sum03 + sum05 - sum15;

  {print result}
  writeln(sum);
end.


{
  opt/euler/pascal$ fpc pe_001_03.pas
  $ ./pe_001_03 9
  23
  $ ./pe_001_03 999
  233168
  $ ./pe_001_03 999999
  233333166668
}
