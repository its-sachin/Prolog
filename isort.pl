del([Num|Tail],Tail,Num).
del([H1|T1],[H1|T2],Num) :- del(T1,T2,Num).

addL([],L,L).
addL([H|T],L2,[H|L3]) :- addL(T,L2,L3).

reorder([],[]).
reorder(List,[H|T]) :- del(List,Del,H),
                       reorder(Del,T).
sorted([]).
sorted([_]).
sorted([H1|[H2|T]]) :- H1=<H2,
                       sorted([H2|T]).

isort(X,Y) :- reorder(X,Y),
             sorted(Y).