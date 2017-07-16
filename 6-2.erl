#!/usr/bin/env escript
main(_) ->
    {ok, [A,B]} = io:fread("Two numbers? ", "~d~d"),
    io:format("mean(~p,~p) = ~p~n", [A,B,mean(A,B)]).

mean(A,B) ->
    (A + B) div 2.
