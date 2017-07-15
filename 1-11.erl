#!/usr/bin/env escript
%% 「任意の」ってユーザーに入力させろって意味？ 違うらしい。
main(_) ->
    {ok, [X]} = io:fread("x = ? ", "~d"),
    {ok, [D]} = io:fread("divisor? ", "~d"),
    if D < X ->
            io:format("~p / ~p = ~p R ~p~n", [X, D, X div D, X rem D]);
       D >= X ->
            error("divisor must be less than dividend", [X])
    end.
