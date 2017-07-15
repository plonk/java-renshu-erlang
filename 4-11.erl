#!/usr/bin/env escript
main(_) ->
    {ok, [N]} = io:fread("How many digits would you like? ", "~d"),
    LongEnough = lists:append(lists:duplicate((N div 10) + 1, "0123456789")),
    Digits = lists:sublist(LongEnough, N),
    io:format("~s~n", [Digits]).
