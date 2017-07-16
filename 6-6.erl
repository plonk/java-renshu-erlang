#!/usr/bin/env escript
main(_) ->
    lists:foreach(fun (I) -> show_row(I) end, lists:seq(1,9)).

show_row(N) when N >= 1, N =< 9 ->
    [io:format("~2w ", [I*N]) || I <- lists:seq(1,9)],
    io:format("~n").
