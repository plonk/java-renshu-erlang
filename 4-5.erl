#!/usr/bin/env escript
p(V) ->
    io:format("~w~n", [V]).

main(_) ->
    {ok,Nums} = io:fread("Ten numbers? ", "~d~d~d~d~d~d~d~d~d~d"),
    p(lists:sum(Nums) / 10).
