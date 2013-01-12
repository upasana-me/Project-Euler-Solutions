-module(problem25).
-export([fibbonaci/0]).

fibbonaci() -> fibbonaci(0, 1, 1, 1).

fibbonaci(1000, _, _, N) -> N;
fibbonaci(_, Acc1, Acc2, N) -> fibbonaci(length(integer_to_list(Acc2)), Acc2, Acc1+Acc2, N+1).
     
    
    
