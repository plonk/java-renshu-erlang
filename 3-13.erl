#!/usr/bin/env escript
main(_) ->
    {ok, [I]} = io:fread("Month? ", "~d"),
    NDays = case I of
                2 -> 28;
                4 -> 30;
                6 -> 30;
                9 -> 30;
                11 -> 30;
                _ when I >= 1 andalso I =< 12 -> 31
            end,
    io:format("There are ~p days in that month.~n", [NDays]).
