#!/usr/bin/env escript
main(_) ->
    {ok, [X, Y]} = io:fread("X, Y? ", "~d~d"),
    if X < Y andalso X rem 2 == 0 andalso Y rem 2 == 0 ->
            io:format("X is less than Y and X and Y are both even.~n");
       true -> ok
    end,
    if X == Y andalso X < 0 ->
            io:format("X is equal to Y and is negative.~n");
       true -> ok
    end,
    if X < Y orelse X rem 2 == 0 ->
            io:format("X is less than Y or X is even.~n");
       true -> ok
    end,
    if (X =< 10 orelse X >= 100) andalso (Y >= 10 andalso Y =< 100) ->
            io:format("X is less than or equal to 10 or more than or equal to 100, and Y is between 10 and 100 inclusive.~n");
       true -> ok
    end,
    if not (X < 0 andalso Y < 0) ->
            io:format("It is false that X and Y are both negative.~n");
       true -> ok
    end.
