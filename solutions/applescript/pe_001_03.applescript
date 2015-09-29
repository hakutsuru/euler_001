-- Project Euler <https://projecteuler.net>
-- Problem: 1
-- Solution: 3
-- Author: Sean Broderick <hakutsuru@mac.com>
-- Date: 2015-05-05


local factor_a
local factor_b
local factor_c
local div_a
local div_b
local div_c
local threshold_limit
local multiples_sum

set multiples_sum to 0
set threshold_limit to 999

set factor_a to 3
set factor_b to 5
set factor_c to (factor_a * factor_b)

set div_a to (threshold_limit div factor_a)
set div_b to (threshold_limit div factor_b)
set div_c to (threshold_limit div factor_c)

set multiples_sum to Â
	factor_a * (summation_to_number(div_a)) + Â
	factor_b * (summation_to_number(div_b)) - Â
	factor_c * (summation_to_number(div_c))

on summation_to_number(num)
	-- classic formula: ((n^2)/2) + (n/2)
	-- guaranteed to be an integer, but larger values must be
	-- represented as a float (due to language limits)
	return ((num / 2) * (num + 1))
end summation_to_number


-- Result (multiples_sum):
-- ... threshold_limit = 9, Result = 23
-- ... threshold_limit = 999, Result = 233168
-- ... threshold_limit = 999999, Result = 2.33333166668E+11, duration = 0s
