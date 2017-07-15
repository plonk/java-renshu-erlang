#!/usr/bin/env escript
main(_) ->
    {ok, [Score]} = io:fread("Score? ", "~d"),
    if Score >= 60 ->
            io:format("Passed~n");
       Score < 60 ->
            io:format("Failed~n")
    end.
