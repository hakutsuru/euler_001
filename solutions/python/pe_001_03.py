# Project Euler <https://projecteuler.net>
# Problem: 1
# Solution: 3
# Author: Sean Broderick <hakutsuru@mac.com>
# Date: 2015-05-09


import sys

threshold = int(sys.argv[1], base=10)
sum = 0

def summation_to_number(num):
    # sum of whole numbers formula
    return ((num**2 + num) // 2)

sum03 = ( 3 * summation_to_number(divmod(threshold, 3)[0]))
sum05 = ( 5 * summation_to_number(divmod(threshold, 5)[0]))
sum15 = (15 * summation_to_number(divmod(threshold,15)[0]))

sum = sum03 + sum05 - sum15

print(sum)


# Result (sum):
# /opt/euler/python$ python3 pe_001_03.py 9
# 23
# /opt/euler/python$ python3 pe_001_03.py 999
# 233168
# /opt/euler/python$ python3 pe_001_03.py 999999
# 233333166668
