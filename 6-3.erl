#!/usr/bin/env escript
main(_) ->
    {ok, [A,B,C]} = io:fread("Three numbers? ", "~d~d~d"),
    io:format("Max = ~p~n", [max3(A,B,C)]).

max2(A,B) when A >= B ->
    A;
max2(A,B) when A < B ->
    B.

max3(A,B,C) ->
    max2(max2(A,B),C).
