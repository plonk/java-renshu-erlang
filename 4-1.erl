#!/usr/bin/env escript
main(_) ->
    [io:format("SPAM~n") || _ <- lists:seq(1, 10)].
