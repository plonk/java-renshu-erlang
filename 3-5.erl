#!/usr/bin/env escript
main(_) ->
    {ok, [X]} = io:fread("NUMBER? ", "~d"),
    if X rem 2 == 0 ->
            io:format("even~n");
       X rem 2 == 1 ->
            io:format("odd~n")
    end.
