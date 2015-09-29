{ Project Euler <https://projecteuler.net>
  Problem: 1
  Solution: 1
  Author: Sean Broderick <hakutsuru@mac.com>
  Date: 2015-08-14
}

var
  args: string;
  threshold: int64;
  multiple_of_3: boolean;
  multiple_of_5: boolean;
  sum: int64;
  i: int64;

begin
  {obtain threshold}
  args := ParamStr(1);
  val(args, threshold, i);

  {calculate sum}
  sum := 0;
  for i := 0 to threshold do
    begin
      multiple_of_3 := ((i mod 3) = 0);
      multiple_of_5 := ((i mod 5) = 0);
      if (multiple_of_3 or multiple_of_5) then
        sum := sum + i;
    end;

  {print result}
  writeln(sum);
end.


{
  opt/euler/pascal$ fpc pe_001_01.pas
  $ ./pe_001_01 9
  23
  $ ./pe_001_01 999
  233168
  $ ./pe_001_01 999999
  233333166668
}
