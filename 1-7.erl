#!/usr/bin/env escript
%% 「任意の値を代入し」って勝手に数値を決めていいってこと？
main(_) ->
    X = 3,
    Y = 7,
    (fun (X, Y) ->
             io:format("x=~p,y=~p~n", [X,Y])
     end)(Y, X).
