-module(problem20).
-export([factorialSum/1]).

factorialSum(N) -> factorialSum(N, 1).

factorialSum(1, Factorial) -> lists:foldl(fun(X, Sum) -> (X-48) + Sum end, 0, integer_to_list(Factorial));
factorialSum(N, Factorial) -> factorialSum(N-1, Factorial*N).
