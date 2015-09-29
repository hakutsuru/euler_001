# Project Euler <https://projecteuler.net>
# Problem: 1
# Solution: 2
# Author: Sean Broderick <hakutsuru@mac.com>
# Date: 2015-09-25


# this is cheap, but... gonna use erlang

{threshold, _} = Integer.parse(List.first(System.argv))

sum3 = Enum.sum :lists.seq(3,threshold,3)

already_included? = fn(n) -> (rem(n, 3) == 0) end
multiples_of_5 = for n <- :lists.seq(5,threshold,5), !already_included?.(n), do: n
sum5 = Enum.sum multiples_of_5

sum = sum3 + sum5
IO.inspect sum


# Result (sum):
# /opt/euler/elixir$ elixir pe_001_02.exs 9
# 23
# /opt/euler/elixir$ elixir pe_001_02.exs 999
# 233168
# /opt/euler/elixir$ elixir pe_001_02.exs 999999
# 233333166668
