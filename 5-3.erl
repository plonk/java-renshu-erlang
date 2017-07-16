#!/usr/bin/env escript
main(_) ->
    {ok, Nums} = io:fread("10 numbers? ", "~d~d~d~d~d~d~d~d~d~d"),
    Evens = [N || N <- Nums, N rem 2 == 0],
    Odds = [N || N <- Nums, N rem 2 == 1],
    io:format("Even: ~w~n", [Evens]),
    io:format("Odd: ~w~n", [Odds]).
