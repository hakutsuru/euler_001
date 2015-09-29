# Project Euler <https://projecteuler.net>
# Problem: 1
# Solution: 1
# Author: Sean Broderick <hakutsuru@mac.com>
# Date: 2015-05-09


import sys

threshold = int(sys.argv[1], base=10)
threshold += 1
sum = 0

for x in range(threshold):
    multiple_of_3 = ((x % 3) == 0)
    multiple_of_5 = ((x % 5) == 0)
    if (multiple_of_3 or multiple_of_5):
        sum += x

print(sum)


# Result (sum):
# /opt/euler/python$ python3 pe_001_01.py 9
# 23
# /opt/euler/python$ python3 pe_001_01.py 999
# 233168
# /opt/euler/python$ python3 pe_001_01.py 999999
# 233333166668
