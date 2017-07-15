#!/usr/bin/env escript +pc unicode
main(_) ->
    {{ThisYear,_,_},_} = calendar:local_time(),
    {ok, [YearBorn]} = io:fread("What year were you born? ", "~d"),
    io:format("You have lived for aproximately ~p days.~n", [(ThisYear-YearBorn)*365]).
