# Project Euler <https://projecteuler.net>
# Problem: 1
# Solution: 3
# Author: Sean Broderick <hakutsuru@mac.com>
# Date: 2015-09-25


{threshold, _} = Integer.parse(List.first(System.argv))

# whole-number summation
# ((n^2)/2) + (n/2)
summation_to_number = fn x -> div(((x * x) + x), 2) end
   
sum03 =  3 * summation_to_number.(div(threshold, 3))
sum05 =  5 * summation_to_number.(div(threshold, 5))
sum15 = 15 * summation_to_number.(div(threshold, 15)) 

sum = sum03 + sum05 - sum15
IO.inspect sum


# Result (sum):
# /opt/euler/elixir$ elixir pe_001_03.exs 9
# 23
# /opt/euler/elixir$ elixir pe_001_03.exs 999
# 233168
# /opt/euler/elixir$ elixir pe_001_03.exs 999999
# 233333166668
