#!/usr/bin/env escript
main(_) ->
    {ok, [N]} = io:fread("How many asterisks would you like? ", "~d"),
    io:format("~s~n", [lists:duplicate(N, $*)]).
