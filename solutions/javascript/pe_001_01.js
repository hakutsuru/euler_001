// Project Euler <https://projecteuler.net>
// Problem: 1
// Solution: 1
// Author: Sean Broderick <hakutsuru@mac.com>
// Date: 2015-05-06


var multiple_of_3;
var multiple_of_5;
var sum = 0;
var threshold = parseInt(process.argv[2],10);

for (var i = 0; i <= threshold; i += 1) {
  multiple_of_3 = ((i % 3) === 0);
  multiple_of_5 = ((i % 5) === 0);
  if (multiple_of_3 || multiple_of_5) {
    sum += i;
  }
};

console.log(sum);


// Result (sum):
// /opt/euler/javascript$ node pe_001_01.js 9
// 23
// /opt/euler/javascript$ node pe_001_01.js 999
// 233168
// /opt/euler/javascript$ node pe_001_01.js 999999
// 233333166668
