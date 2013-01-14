-module(problem25).
-export([fibbonaci/1]).

fibbonaci() -> fibbonaci(Length, 0, 1, 1).

fibbonaci(1000, _, Acc2, _) -> Acc2;
fibbonaci(Length, Acc1, Acc2, N) -> fibbonaci(length(integer_to_list(Acc2)), Acc2, Acc1+Acc2, N+1).
     
    
    
