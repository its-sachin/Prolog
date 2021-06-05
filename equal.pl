equal(X,Y) :- X=Y.
gequal(X,Y) :- equal(X,Y);X>Y.