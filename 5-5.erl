#!/usr/bin/env escript
main(_) ->
    {ok, [N]} = io:fread("Number? ", "~d"),
    io:format("~s~n", [integer_to_list(N, 2)]).
