#!/usr/bin/env escript
main(_) ->
    {ok, [X, Y]} = io:fread("X, Y? ", "~d~d"),
    io:format("X + Y = ~p~n", [X+Y]),
    io:format("X - Y = ~p~n", [X-Y]),
    io:format("X * Y = ~p~n", [X*Y]),
    io:format("X / Y = ~p R ~p~n", [X div Y, X rem Y]).
