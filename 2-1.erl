#!/usr/bin/env escript
main(_) ->
    {ok, [S]} = io:fread("? ", "~s"),
    io:format("S = ~ts~n", [S]).
