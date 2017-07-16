#!/usr/bin/env escript
main(_) ->
    loop(0, 0).

loop(Sum, Count) when Sum > 100; Count == 10 ->
    io:format("~w~n", [Sum]);
loop(Sum, Count) ->
    {ok, [N]} = io:fread("Number? ", "~d"),
    loop(Sum + N, Count + 1).
