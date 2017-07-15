#!/usr/bin/env escript
main(_) ->
    X = 3,
    lists:foreach(fun (I) ->
                          io:format("~p*~p=~p~n", [X, I, X*I])
                  end,
                  [2,3,4]).
