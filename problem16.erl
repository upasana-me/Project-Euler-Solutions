-module(problem16).
-export([twoPowerX/1]).

twoPowerX(X) -> twoPowerX(X, 1).

twoPowerX(0, AnswerX) -> lists:foldl(fun(X, Sum) -> (X-48) + Sum end, 0, integer_to_list(AnswerX));
twoPowerX(X, AnswerX) -> twoPowerX(X-1, AnswerX*2).    
