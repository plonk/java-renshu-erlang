#!/usr/bin/env escript
p(V) ->
    io:format("~w~n", [V]).

main(_) ->
    Factorial = lists:foldl(fun erlang:'*'/2, 1, lists:seq(1,7)),
    io:format("7! = "),
    p(Factorial).
