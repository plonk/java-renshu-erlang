#!/usr/bin/env escript
main(_) ->
    [io:format("F(~p) = ~p~n", [I, fib(I)]) || I <- lists:seq(11, 20)].

fib(0) -> 0;
fib(1) -> 1;
fib(N) when N >= 2 -> fib(N-2) + fib(N-1).

