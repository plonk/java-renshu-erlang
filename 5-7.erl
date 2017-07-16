#!/usr/bin/env escript
main(_) ->
    MTable = [[I*J || J <- lists:seq(1,9)] || I <- lists:seq(1,9)],
    {ok, [A, B]} = io:fread("2 numbers? ", "~d~d"),
    io:format("~p * ~p = ~p~n", [A, B, lists:nth(B,lists:nth(A,MTable))]).
