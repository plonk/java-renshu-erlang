#!/usr/bin/env escript
main(_) ->
    Nums = [begin
                {ok, [N]} = io:fread("Number? ", "~d"),
                N
            end || _ <- lists:seq(1, 10)],
    [io:format("~p ", [N*2]) || N <- Nums],
    io:format("~n").
