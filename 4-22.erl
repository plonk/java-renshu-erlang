#!/usr/bin/env escript
main(_) ->
    fib(0, 1).

fib(A, _) when A > 1000 -> io:format("~n");
fib(A, B) ->
    io:fwrite("~p ", [A]),
    fib(B, A + B).
