#!/usr/bin/env escript
main(_) ->
    triangle(3, $|),
    triangle(4, $$),
    triangle(5, $@).

triangle(N, C) ->
    [io:format("~s~n", [lists:duplicate(I, C)]) || I <- lists:seq(1,N)],
    io:format("~n").
