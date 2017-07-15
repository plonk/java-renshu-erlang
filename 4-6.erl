#!/usr/bin/env escript
main(_) ->
    {ok,Digits} = io:fread("? ", lists:append(lists:duplicate(10, "~d"))),
    Defeats = [0 || 0 <- Digits],
    Victories = [1 || 1 <- Digits],
    io:format("~p victories, ~p defeats~n", [length(Victories), length(Defeats)]).
