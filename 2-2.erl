#!/usr/bin/env escript
main(_) ->
    {ok, [X]} = io:fread("NUMBER? ", "~d"),
    io:format("X = ~p~n", [X]).
