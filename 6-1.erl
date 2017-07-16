#!/usr/bin/env escript
main(_) ->
    {ok,[N]} = io:fread("Number? ", "~d"),
    io:format("~p squared is ~p.~n", [N, square(N)]).

square(N) ->
    N * N.
