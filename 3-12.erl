#!/usr/bin/env escript
main(_) ->
    Table = [
     {"Maguro", "Die of mercury poisoning"},
     {"Ebi", "Die of anaphylactic shock"},
     {"Kohada", "Have hives"},
     {"Salmon", "Be single for ever"},
     {"Uni", "Get a boyfriend/girlfriend"},
     {"Ikura", "Find money"}
    ],

    show_choices(Table),
    {ok, [I]} = io:fread("What's your choice today? ", "~d"),

    {_, Fortune} = lists:nth(I, Table),

    io:format("You will...~n    ~s~n", [Fortune]).

show_choices(Table) ->
    Table_ = lists:zip(Table, lists:seq(1, length(Table))),
    Netas = [lists:append([$0 + I | "="], Neta) || {{Neta, _}, I} <- Table_],
    io:format("~s~n", [lists:concat(lists:join(", ", Netas))]).
