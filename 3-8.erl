#!/usr/bin/env escript
%% andalso と orelase のかわりに , ; が使えたはずだけど、違いとどっち
%% がどっちかがわからない。
main(_) ->
    {ok, [Midterm, Final]} =
        io:fread("Midterm and final exam scores? ", "~d~d"),
    Total = Midterm + Final,
    if Midterm >= 60 andalso Final >= 60 ->
            io:format("Passed~n");
       Total >= 130->
            io:format("Passed~n");
       Total >= 100 andalso (Midterm >= 90 orelse Final >= 90) ->
            io:format("Passed~n");
       true ->
            io:format("Failed~n")
    end.
