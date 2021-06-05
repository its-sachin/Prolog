split([],[],[]).
split([A],[A],[]).
split([H1|[H2|T]],[H1|T1],[H2|T2]) :- split(T,T1,T2).

merge(A,[],A).
merge([],A,A).
merge([H1|T1],[H2|T2],[H1|T]) :- H1=<H2,
                                merge(T1,[H2|T2],T).
merge([H1|T1],[H2|T2],[H2|T]) :- H1>H2,
                                merge([H1|T1],T2,T).

msort([],[]).
msort([A],[A]).
msort([H1|[H2|T]],Ans) :- split([H1|[H2|T]],L1,L2),
                          msort(L1,A1),
                          msort(L2,A2),
                          merge(A1,A2,Ans).