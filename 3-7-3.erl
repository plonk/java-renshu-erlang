#!/usr/bin/env escript
%% 存在しない変数がエラーになるのは便利だな。

%% Ruby だとメソッド呼び出し(実行時に解決される)と文法的に区別が付かな
%% いからエラーにならない。
main(_) ->
    {ok, [Score]} = io:fread("Score? ", "~d"),
    Judgement = if Score >= 80 ->
                        "Excellent";
                   Score >= 70 ->
                        "Good";
                   Score >= 60 ->
                        "Satisfactory";
                   Score < 60 ->
                        "Unsatisfactory"
                end,
    io:format("~s~n", [Judgement]).
