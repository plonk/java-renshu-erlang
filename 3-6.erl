#!/usr/bin/env escript
main(_) ->
    {ok, [X]} = io:fread("NUMBER? ", "~d"),
    Sign = if X >= 0 -> "positive"; true -> "negative" end,
    Parity = if X rem 2 == 0 -> "even"; true -> "odd" end,
    io:format("~s ~s number~n", [Sign, Parity]).
