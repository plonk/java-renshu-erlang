#!/usr/bin/env escript
main(_) ->
    [begin
         Msg = case is_prime(I) of
                   true -> "PRIME";
                   false -> "NOT PRIME"
               end,
         io:format("~p: ~s~n", [I, Msg])
     end || I <- lists:seq(10000, 10100)].

is_prime(1) -> false;
is_prime(N) when N >= 1 ->
    not lists:any(fun (D) -> N rem D == 0 end,
                   lists:seq(2, trunc(math:sqrt(N)))).
