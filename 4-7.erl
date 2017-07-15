#!/usr/bin/env escript
getScores() ->
    getScores(1, true, {0, 0}).

get_team(true) ->
    "Kyojin";
get_team(false) ->
    "Hanshin".

ord(N) ->
    R = N rem 10,
    Suffix = if N >= 11 andalso N =< 19 -> "th";
                true ->
                     case R of
                         0 -> "th";
                         1 -> "st";
                         2 -> "nd";
                         3 -> "rd";
                         _ -> "th"
                     end
             end,
    integer_to_list(N) ++ Suffix.

getScores(Inning, Top, {Kyojin, Hanshin}) ->
    if Inning == 10 ->
            {Kyojin, Hanshin};
       true ->
            HalfInning = case Top of
                             true -> "Top";
                             false -> "Bottom"
                         end,
            io:format("~s of ~s inning, ~s's score? ", [HalfInning, ord(Inning), get_team(Top)]),
            {ok, [N]} = io:fread("", "~d"),
            case Top of
                true ->
                    getScores(Inning, not Top, {Kyojin + N, Hanshin});
                false ->
                    getScores(Inning+1, not Top, {Kyojin, Hanshin + N})
            end
    end.

main(_) ->
    {KyojinScore, HanshinScore} = getScores(),
    io:format("Kojin won ~p points, Hanshin ~p.~n", [KyojinScore, HanshinScore]),
    if KyojinScore > HanshinScore ->
            io:format("Kyojin wins.~n");
       KyojinScore < HanshinScore ->
            io:format("Hanshin wins.~n");
       KyojinScore == HanshinScore ->
            io:format("It's a draw.~n")
    end.
