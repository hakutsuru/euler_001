// Project Euler <https://projecteuler.net>
// Problem: 1
// Solution: 3
// Author: Sean Broderick <hakutsuru@mac.com>
// Date: 2015-05-06


var div03;
var div05;
var div15;
var sum03;
var sum05;
var sum15;
var sum;
var threshold = parseInt(process.argv[2],10);

div03 = Math.floor(threshold/3);
div05 = Math.floor(threshold/5);
div15 = Math.floor(threshold/15);

sum03 = (3 * summation_to_number(div03));
sum05 = (5 * summation_to_number(div05));
sum15 = (15 * summation_to_number(div15));

// adding the series of 3 multiples and 5 multiples
// effectively adds duplicates of 15 multiples
sum = sum03 + sum05 - sum15;

function summation_to_number(num) {
    // classic formula: ((n^2)/2) + (n/2)
	return ((num / 2) * (num + 1));
}

console.log(sum);


// Result (sum):
// /opt/euler/javascript$ node pe_001_03.js 9
// 23
// /opt/euler/javascript$ node pe_001_03.js 999
// 233168
// /opt/euler/javascript$ node pe_001_03.js 999999
// 233333166668
