#!/usr/bin/env escript
main(_) ->
    io:format("~w~n", [[3*I || I <- lists:seq(1,9)]]).
