#!/usr/bin/env escript
main(_) ->
    {ok,[X]} = io:fread("NUMBER? ", "~d"),
    lists:foreach(fun (I) ->
                          io:format("~p^~p = ~p~n",
                                    [X, I, trunc(math:pow(X,I))])
                  end,
                  [1,2,3]).
