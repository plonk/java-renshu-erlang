#!/usr/bin/env escript
main(_) ->
    Table = [[I * J || J <- lists:seq(1,9)] || I <- lists:seq(1,9)],
    lists:foreach(
      fun (Row) ->
              lists:foreach(fun (Elt) -> io:format("~2w ", [Elt]) end, Row),
              io:format("~n")
      end, Table).
