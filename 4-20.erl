#!/usr/bin/env escript
main(_) ->
    {ok, [N]} = io:fread("Size? ", "~d"),
    Triangle = lists:append([lists:duplicate(I, $$) ++ "\n" || I <- lists:seq(1,N)]),
    io:format("~s", [Triangle]).
