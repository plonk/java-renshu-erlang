#!/usr/bin/env escript
%%  練習問題 3 - 3

%% int 型の変数 x、y にそれぞれ数値を入力し、x が ｙ より大きい場合に
%% は“xはyより大きい”、x が y より小さい場合には“xはyより小さい”と
%% 表示するプログラムを作成しなさい。

main(_) ->
    {ok,[X,Y]} = io:fread("X, Y? ", "~d~d"),
    if X > Y ->
            io:format("X > Y~n");
       X < Y ->
            io:format("X < Y~n");
    end.
