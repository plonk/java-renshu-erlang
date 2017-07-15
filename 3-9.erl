#!/usr/bin/env escript
main(_) ->
    Days = [sun, mon, tue, wed, thu, fri, sat],
    TimeRanges = [morning, afternoon, night],
    print_choices(Days),
    {ok, [I]} = io:fread("Day? ", "~d"),
    D = lists:nth(I+1, Days),
    print_choices(TimeRanges),
    {ok, [J]} = io:fread("Hours? ", "~d"),
    T = lists:nth(J+1, TimeRanges),
    case is_clinic_open(D, T) of
        true ->
            io:format("OPEN on ~pday ~p~n", [D, T]);
        false ->
            io:format("CLOSED on ~pday ~p~n", [D, T])
    end.

print_choices(Choices) ->
    Ws = [ lists:concat([I-1, "=", lists:nth(I, Choices)]) || I <- lists:seq(1, length(Choices)) ],
    Line = lists:concat(lists:join(", ", Ws)),
    io:format("~s~n", [Line]).

is_clinic_open(sun, morning) ->
    false;
is_clinic_open(sun, afternoon) ->
    false;
is_clinic_open(sun, night) ->
    false;
is_clinic_open(mon, morning) ->
    true;
is_clinic_open(mon, afternoon) ->
    true;
is_clinic_open(mon, night) ->
    true;
is_clinic_open(tue, morning) ->
    false;
is_clinic_open(tue, afternoon) ->
    true;
is_clinic_open(tue, night) ->
    true;
is_clinic_open(wed, morning) ->
    true;
is_clinic_open(wed, afternoon) ->
    true;
is_clinic_open(wed, night) ->
    false;
is_clinic_open(thu, morning) ->
    true;
is_clinic_open(thu, afternoon) ->
    true;
is_clinic_open(thu, night) ->
    true;
is_clinic_open(fri, morning) ->
    false;
is_clinic_open(fri, afternoon) ->
    true;
is_clinic_open(fri, night) ->
    true;
is_clinic_open(sat, morning) ->
    true;
is_clinic_open(sat, afternoon) ->
    false;
is_clinic_open(sat, night) ->
    false.
