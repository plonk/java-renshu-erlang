#!/usr/bin/env escript
main(_) ->
    {ok,[X,Y]} = io:fread("X, Y? ", "~d~d"),
    if X > Y ->
            io:format("X > Y~n");
       X < Y ->
            io:format("X < Y~n");
       X == Y ->
            io:format("X = Y~n")
    end.
    
