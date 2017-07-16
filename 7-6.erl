#!/usr/bin/env escript
make_coin_case() ->
    [{500,0},{100,0},{50,0},{10,0},{5,0},{1,0}].

add_coins(Case, Denom, Increment) ->
    Count = proplists:get_value(Denom, Case),
    lists:keyreplace(Denom, 1, Case, {Denom, Count + Increment}).

get_count(Case, Denom) ->
    proplists:get_value(Denom, Case).

get_count(Case) ->
    lists:foldl(fun ({_, Count}, Acc) -> Acc + Count end,
                0, Case).

get_amount(Case) ->
    lists:sum(lists:map(fun ({Denom, Count}) -> Denom*Count end, Case)).

get_amount(Case, Denom) ->
    proplists:get_value(Denom, Case) * Denom.

times(N, State, F) ->
    times(0, N, State, F).

times(N, N, State, _) ->
    State;
times(I, N, State, F) ->
    NewState = F(I, State),
    times(I + 1, N, NewState, F).

main(_) ->
    Case_ = times(10, make_coin_case(),
                  fun (_, Case) ->
                          {ok, [Denom]} = io:fread("Denomination? ", "~d"),
                          {ok, [Count]} = io:fread("How many? ", "~d"),
                          add_coins(Case, Denom, Count)
                  end),
    [io:format("~p ~p yen coins~n", [Count, Denom]) || {Denom, Count} <- Case_],
    io:format("~p coins in total~n", [get_count(Case_)]),
    io:format("Total ~p yen~n", [get_amount(Case_)]).
