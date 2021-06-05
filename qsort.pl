addL([],L,L).
addL([H|T],L2,[H|L3]) :- addL(T,L2,L3).

reorder([],[]).
reorder(List,[H|T]) :- del(List,Del,H),
                       reorder(Del,T).
                       
leftPart([],_).
leftPart([H|T],N) :- H<N,leftPart(T,N).

rightPart([],_).
rightPart([H|T],N) :- H>=N,rightPart(T,N).

partiton(List,Pivot,P1,P2) :-  addL(P1,P2,M),
                               reorder(List,M),
                               leftPart(P1,Pivot),
                               rightPart(P2,Pivot).

qsort([],[]).
qsort([A],[A]).
qsort([H|T],Ans) :-   partiton([H|T],H,P1,[H|P2]),
                      qsort(P1,A1),
                      qsort(P2,A2),
                      addL(A1,[H|A2],Ans).
