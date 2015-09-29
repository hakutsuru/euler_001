% Project Euler <https://projecteuler.net>
% Problem: 1
% Solution: 3
% Author: Sean Broderick <hakutsuru@mac.com>
% Date: 2015-06-10


-module(pe_001_03).
-export([sum/1]).

% whole-number summation
% ((n^2)/2) + (n/2)
summation_to_number(X) ->
  ((X * X) + X) div 2.

sum(Threshold) ->
   Sum03 =  3 * summation_to_number(Threshold div 3),
   Sum05 =  5 * summation_to_number(Threshold div 5),
   Sum15 = 15 * summation_to_number(Threshold div 15),
   Sum03 + Sum05 - Sum15.


% Result (sum):
% /opt/euler/erlang$ erl
% 1> c(pe_001_03).
% {ok,pe_001_03}
% 2> pe_001_03:sum(9).
% 23
% 3> pe_001_03:sum(999).
% 233168
% 4> pe_001_03:sum(999999).
% 233333166668
