#!/usr/bin/env escript
main(_) ->
    Holidays = [["ganjitsu", "seijin no hi"],
                ["kenkoku kinen no hi"],
                ["shunbun no hi"],
                ["shouwa no hi"],
                ["kenpou kinen bi", "midori no hi", "kodomo no hi"],
                [],
                ["umi no hi"],
                [],
                ["keirou no hi", "shuubun no hi"],
                ["taiiku no hi"],
                ["bunka no hi", "kinrou kansha no hi"],
                ["tennou tanjou bi"]],
    {ok, [Ord]} = io:fread("From which month? ", "~d"),
    Output = strjoin(", ", lists:append([lists:nth(I, Holidays) || I <- lists:seq(Ord, 12)])),
    io:format("~s.~n", [Output]).

strjoin(Sep, Strings) ->
    lists:concat(lists:join(Sep, Strings)).
