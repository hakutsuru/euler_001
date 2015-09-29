// Project Euler <https://projecteuler.net>
// Problem: 1
// Solution: 2
// Author: Sean Broderick <hakutsuru@mac.com>
// Date: 2015-05-06


var multiple_of_3;
var sum = 0;
var threshold = parseInt(process.argv[2],10);

for (var i = 3; i <= threshold; i += 3) {
    sum += i;
};

for (var i = 5; i <= threshold; i += 5) {
  multiple_of_3 = ((i % 3) === 0);
  if (!multiple_of_3) {
    sum += i;
  }
};

console.log(sum);


// Result (sum):
// /opt/euler/javascript$ node pe_001_02.js 9
// 23
// /opt/euler/javascript$ node pe_001_02.js 999
// 233168
// /opt/euler/javascript$ node pe_001_02.js 999999
// 233333166668
