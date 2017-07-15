#!/usr/bin/env escript
main(_) ->
    {ok, [Score]} = io:fread("Score? ", "~d"),
    io:format("~s~n",
              [if Score >= 80 ->
                       "Very well done.";
                  Score >= 60 ->
                       "Well done.";
                  Score < 60 ->
                       "Needs improvement."
               end]).
