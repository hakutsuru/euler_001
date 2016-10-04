# Project Euler <https://projecteuler.net>
# Problem: 1
# Solution: 3
# Author: Sean Broderick <hakutsuru@mac.com>
# Date: 2015-05-07


THRESHOLD=$1
result=0

function summation_to_number()
{
    # classic formula: ((n^2)/2) + (n/2)
    # ensure integer division, otherwise you need bc
    num=$1
    echo $(( (((num * num) + num) / 2) ))
}

div03=$(( THRESHOLD / 3  ))
div05=$(( THRESHOLD / 5  ))
div15=$(( THRESHOLD / 15 ))

sum03=$((  3 * $(summation_to_number "$div03") ))
sum05=$((  5 * $(summation_to_number "$div05") ))
sum15=$(( 15 * $(summation_to_number "$div15") ))

result=$(( sum03 + sum05 - sum15 ))

echo $result


# Result (sum):
# /opt/euler/bash$ /bin/bash pe_001_03.sh 9
# 23
# /opt/euler/bash$ /bin/bash pe_001_03.sh 999
# 233168
# /opt/euler/bash$ /bin/bash pe_001_03.sh 999999
# 233333166668
