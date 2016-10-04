# Project Euler <https://projecteuler.net>
# Problem: 1
# Solution: 2
# Author: Sean Broderick <hakutsuru@mac.com>
# Date: 2015-05-07


THRESHOLD=$1
result=0

for (( i=3; i<=$THRESHOLD; i+=3 )); do
    (( result += i ))
done

for (( i=5; i<=$THRESHOLD; i+=5 )); do
    mod_3=$(( i % 3 ))
    # skip multiples of three
    if [[ $mod_3 -ne 0 ]];
    then
        (( result += i ))
    fi
done

echo $result


# Result (sum):
# /opt/euler/bash$ /bin/bash pe_001_02.sh 9
# 23
# /opt/euler/bash$ /bin/bash pe_001_02.sh 999
# 233168
# /opt/euler/bash$ /bin/bash pe_001_02.sh 999999
# 233333166668
