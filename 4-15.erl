#!/usr/bin/env escript
%% nande 4 ijou?
main(_) ->
    loop().

is_prime(1) -> false;
is_prime(N) when N >= 1 ->
    not lists:any(fun (D) -> N rem D == 0 end,
                   lists:seq(2, trunc(math:sqrt(N)))).
loop() ->
    {ok, [N]} = io:fread("Number? ", "~d"),
    case is_prime(N) of
        true ->
            io:format("PRIME~n");
        false ->
            io:format("NOT PRIME~n")
    end,
    loop().
