# Project Euler <https://projecteuler.net>
# Problem: 1
# Solution: 2
# Author: Sean Broderick <hakutsuru@mac.com>
# Date: 2015-05-09


import sys

threshold = int(sys.argv[1], base=10)
threshold += 1
sum = 0

for x in range(3, threshold, 3):
    sum += x

for x in range(5, threshold, 5):
    multiple_of_3 = (divmod(x,3)[1] == 0)
    if not multiple_of_3:
        sum += x

print(sum)


# Result (sum):
# /opt/euler/python$ python3 pe_001_02.py 9
# 23
# /opt/euler/python$ python3 pe_001_02.py 999
# 233168
# /opt/euler/python$ python3 pe_001_02.py 999999
# 233333166668
