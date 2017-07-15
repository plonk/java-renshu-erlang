#!/usr/bin/env escript
main(_) ->
    loop(0).

loop(Sum) ->
    {ok, [N]} = io:fread("Number? ", "~d"),
    case N of
        0 ->
            io:format("Total: ~p~n", [Sum]);
        _ ->
            loop(Sum + N)
    end.
