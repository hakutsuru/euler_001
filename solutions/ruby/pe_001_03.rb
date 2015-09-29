# Project Euler <https://projecteuler.net>
# Problem: 1
# Solution: 3
# Author: Sean Broderick <hakutsuru@mac.com>
# Date: 2015-05-27


threshold = ARGV[0].to_i
sum = 0

def summation_to_number(num)
    # sum of whole numbers formula
    ((num**2 + num) / 2)
end

sum03 = ( 3 * summation_to_number( threshold / 3 ))
sum05 = ( 5 * summation_to_number( threshold / 5 ))
sum15 = (15 * summation_to_number( threshold / 15 ))

sum = sum03 + sum05 - sum15

puts sum


# Result (sum):
# /opt/euler/ruby$ ruby pe_001_03.rb 9
# 23
# /opt/euler/ruby$ ruby pe_001_03.rb 999
# 233168
# /opt/euler/ruby$ ruby pe_001_03.rb 999999
# 233333166668
