#!/usr/bin/env escript

-module(problem20).
-export([main/1]).

main(_) -> Answer = factorialSum(100),
	   io:format("~w\n",[Answer]).
    
factorialSum(N) -> factorialSum(N, 1).

factorialSum(1, Factorial) -> lists:foldl(fun(X, Sum) -> (X-48) + Sum end, 0, integer_to_list(Factorial));
factorialSum(N, Factorial) -> factorialSum(N-1, Factorial*N).
