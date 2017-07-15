#!/usr/bin/env escript
main(_) ->
    {ok, Nums} = io:fread("2 NUMBERS? ", "~d~d"),
    io:format("Avg. = ~p~n", [avg(Nums)]).

avg(Nums) ->
    lists:sum(Nums) / length(Nums).
