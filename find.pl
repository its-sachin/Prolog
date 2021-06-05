find([],_) :- false.
find([Head|Tail],Num) :- equal(Head,Num);
                       find(Tail,Num).