#!/usr/bin/env escript
main(_) ->
    loop(0, 0).

choose(Cond, A, B) ->
    if Cond ->
            A;
       true ->
            B
    end.

loop(Strikes, Balls) when Strikes == 3; Balls == 4 ->
    io:format("~p ~s, ~p ~s.~n", [Strikes,
                               choose(Strikes==1, "strike", "strikes"),
                               Balls,
                               choose(Balls==1, "ball", "balls")]);
loop(Strikes, Balls) ->
    {ok, [I]} = io:fread("strike=1, ball=2 or foul=3 ? ", "~d"),
    case I of
        1 -> loop(Strikes + 1, Balls);
        2 -> loop(Strikes, Balls + 1);
        3 -> if Strikes == 2 ->
                     loop(Strikes, Balls);
                true ->
                     loop(Strikes + 1, Balls)
             end
    end.
