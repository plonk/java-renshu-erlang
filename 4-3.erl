#!/usr/bin/env escript
main(_) ->
    io:format("~p~n", [[trunc(math:pow(2,I)) || I <- lists:seq(1,8)]]).
