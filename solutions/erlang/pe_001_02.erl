% Project Euler <https://projecteuler.net>
% Problem: 1
% Solution: 2
% Author: Sean Broderick <hakutsuru@mac.com>
% Date: 2015-06-10


-module(pe_001_02).
-export([sum/1]).

sum(Threshold) ->
   Multiples3 = [X || X <- lists:seq(3,Threshold,3)],
   Sum3 = lists:sum(Multiples3),
   Multiples5 =  [X || X <- lists:seq(5,Threshold,5), (X rem 3 /= 0)],
   Sum5 = lists:sum(Multiples5),
   Sum3 + Sum5.


% Result (sum):
%/opt/euler/erlang$ erl
% 1> c(pe_001_02).
% {ok,pe_001_02}
% 2> pe_001_02:sum(9).
% 23
% 3> pe_001_02:sum(999).
% 233168
% 4> pe_001_02:sum(999999).
% 233333166668
