#!/usr/bin/env escript
main(_) ->
    loop([]).

loop(History) ->
    {ok, [N]} = io:fread("Number? ", "~d"),
    case N of
        0 ->
            if History =/= [] ->
                    Avg = lists:sum(History) / length(History),
                    io:format("Avg. = ~p~n", [Avg])
            end;
        _ ->
            loop([N | History])
    end.
