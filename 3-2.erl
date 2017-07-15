#!/usr/bin/env escript
%% 「大きい方（小さくない方）の数」って「大きい」を「以上」と解釈しろってこと？
%% 同じだったら、どっちを表示しても同じか。
main(_) ->
    {ok, [X,Y]} = io:fread("2 NUMBERS? ", "~d~d"),
    N = if X >= Y ->
                X;
           X < Y ->
                Y
        end,
    io:format("~p~n", [N]).
