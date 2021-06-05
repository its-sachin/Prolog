div(X,Y,0) :- X<Y.
div(X,Y,Z) :- X>=Y,
              D is X -Y,
              P is Z -1,
              div(D,Y,P).