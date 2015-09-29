# Project Euler <https://projecteuler.net>
# Problem: 1
# Solution: 1
# Author: Sean Broderick <hakutsuru@mac.com>
# Date: 2015-09-25


# why no named functions? modules are like work ¯\_(ツ)_/¯

{threshold, _} = Integer.parse(List.first(System.argv))

multiple? = fn(n) -> ( (rem(n, 3) == 0) or (rem(n, 5) == 0) ) end
multiples = for n <- 0..threshold, multiple?.(n), do: n

sum = Enum.sum(multiples)
IO.inspect sum


# Result (sum):
# /opt/euler/elixir$ elixir pe_001_01.exs 9
# 23
# /opt/euler/elixir$ elixir pe_001_01.exs 999
# 233168
# /opt/euler/elixir$ elixir pe_001_01.exs 999999
# 233333166668
