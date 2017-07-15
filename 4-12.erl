#!/usr/bin/env escript
main(_) ->
    loop(0).

loop(Sum) when Sum > 100 ->
    io:format("Total: ~p~n", [Sum]);
loop(Sum) ->
    {ok, [N]} = io:fread("? ", "~d"),
    loop(Sum + N).
