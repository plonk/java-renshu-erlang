#!/usr/bin/env escript
main(_) ->
    {ok, [N]} = io:fread("Size? ", "~d"),
    Rows = [render_row(N, I) ++ "\n" || I <- lists:seq(1,N)],
    io:format("~s", [lists:append(Rows)]).

render_row(Length, I) ->
    [if J == I; J == Length - I + 1 ->
             $X;
        true ->
             $ 
     end || J <- lists:seq(1, Length)].
