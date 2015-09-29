# Project Euler <https://projecteuler.net>
# Problem: 1
# Solution: 1
# Author: Sean Broderick <hakutsuru@mac.com>
# Date: 2015-05-07


THRESHOLD=$1
COUNTER=0
result=0

for (( i=1; i<=$THRESHOLD; i+=1 )); do
    mod_3=$(( i % 3 ))
    mod_5=$(( i % 5 ))
    if [[ ($mod_3 -eq 0) || ($mod_5 -eq 0) ]];
    then
        (( result += i ))
    fi
done

echo $result


# Result (sum):
# /opt/euler/bash$ /bin/bash pe_001_01.sh 9
# 23
# /opt/euler/bash$ /bin/bash pe_001_01.sh 999
# 233168
# /opt/euler/bash$ /bin/bash pe_001_01.sh 999999
# 233333166668
