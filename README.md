# Finite-State-Machine
Assignment done for COMP3007 in Prolog

Check Specifications for more details

Open SWI-Prolog
run the following:
[~/Directory/containing/comp3007_f18_101038470_a4_3.pl].

TO TEST IF TRUE:
test(state([1,3,5,8], [], 0, left), X).

TO RECEIVE PATH:
find(state([1,3,5,8], [], 0, left), X).

where X = the time they take
NOTE: the [1,3,5,8] can be a list of ints of any size with any ordering
