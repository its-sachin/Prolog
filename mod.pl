
mod(X,Y,X) :- X<Y.
mod(X,Y,Z) :- X>=Y,
              D is X-Y,
              mod(D,Y,Z).
m