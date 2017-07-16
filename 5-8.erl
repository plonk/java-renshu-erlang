#!/usr/bin/env escript
main(_) ->
    {ok, Nums} = io:fread("10 numbers? ", "~d~d~d~d~d~d~d~d~d~d"),
    io:format("~w~n", [lists:sort(Nums)]).
