% Project Euler <https://projecteuler.net>
% Problem: 1
% Solution: 1
% Author: Sean Broderick <hakutsuru@mac.com>
% Date: 2015-06-10


-module(pe_001_01).
-export([sum/1]).

sum(Threshold) ->
   Multiples = [X || X <- lists:seq(1,Threshold), (X rem 3 == 0) or (X rem 5 == 0)],
   lists:sum(Multiples).


% why no simple shell execution? escript seems like work ¯\_(ツ)_/¯

% Result (sum):
% /opt/euler/erlang$ erl
% 1> c(pe_001_01).
% {ok,pe_001_01}
% 2> pe_001_01:sum(9).
% 23
% 3> pe_001_01:sum(999).
% 233168
% 4> pe_001_01:sum(999999).
% 233333166668
