# Project Euler <https://projecteuler.net>
# Problem: 1
# Solution: 2
# Author: Sean Broderick <hakutsuru@mac.com>
# Date: 2015-05-27


threshold = ARGV[0].to_i
sum = 0

(3..threshold).step(3).each do |x| 
  sum += x
end

(5..threshold).step(5).each do |x|
  multiple_of_3 = ((x % 3) == 0)
  if !multiple_of_3
    sum += x
  end
end

puts sum


# Result (sum):
# /opt/euler/ruby$ ruby pe_001_02.rb 9
# 23
# /opt/euler/ruby$ ruby pe_001_02.rb 999
# 233168
# /opt/euler/ruby$ ruby pe_001_02.rb 999999
# 233333166668
