#!/usr/bin/env escript
main(_) ->
    X = 7,
    (fun (X) ->
             io:format("~p~n", [X]),
             (fun (X) ->
                      io:format("~p~n", [X])
              end)(X div 2)
    end)(X*3).
