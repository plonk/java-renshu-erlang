#!/usr/bin/env escript
main(_) ->
    {ok, [N]} = io:fread("Number? ", "~d"),
    if N >= 2 ->
            io:format("~w~n", [prime_division(N, [], 2)])
    end.

prime_division(1, Factors, _) ->
    lists:reverse(Factors);
prime_division(N, Factors, D) ->
    if N rem D == 0 ->
            prime_division(N div D, [D | Factors], D);
       true ->
            prime_division(N, Factors, D + 1)
    end.
