#!/usr/bin/env escript
main(_) ->
    {ok, Nums} = io:fread("10 numbers? ", "~d~d~d~d~d~d~d~d~d~d"),
    Max = lists:foldl(fun erlang:max/2, hd(Nums), tl(Nums)),
    Min = lists:foldl(fun erlang:min/2, hd(Nums), tl(Nums)),
    io:format("Max = ~p~nMin = ~p~n", [Max, Min]).
