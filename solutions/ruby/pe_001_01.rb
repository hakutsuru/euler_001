# Project Euler <https://projecteuler.net>
# Problem: 1
# Solution: 1
# Author: Sean Broderick <hakutsuru@mac.com>
# Date: 2015-05-27


threshold = ARGV[0].to_i
sum = 0

for x in 0..threshold
  multiple_of_3 = ((x % 3) == 0)
  multiple_of_5 = ((x % 5) == 0)
  if (multiple_of_3 or multiple_of_5)
    sum += x
  end
end

puts sum


# Result (sum):
# /opt/euler/ruby$ ruby pe_001_01.rb 9
# 23
# /opt/euler/ruby$ ruby pe_001_01.rb 999
# 233168
# /opt/euler/ruby$ ruby pe_001_01.rb 999999
# 233333166668
