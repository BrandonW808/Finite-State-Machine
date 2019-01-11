%Brandon Ward
%101038470
crossBridge(state(A, B, T, left), cross(X, Y), state(Z, [X,Y|B], M, right)) :- member(X, A), delete(A, X, L), member(Y, L), delete(L, Y, Z), ((X>Y) -> M is T+X ; M is T+Y).
crossBridge(state(A, B, T, right), goback(X), state([X|A], Y, M, left)) :- member(X, B), delete(B, X, Y), M is T+X.

test(state([],[_,_,_,_], M, right), X) :- M =< X.
test(Y, X) :- crossBridge(Y,_,Z), test(Z, X).

find(state([],[_,_,_,_], M, right), X, []) :- M =< X.
find(Y, X, A) :- crossBridge(Y,W,Z), find(Z, X, B), append([W], B, A).
