#!/usr/bin/env escript
-record(dog, {name}).

main(_) ->
    Dog = make_dog(),
    Dog_ = set_name(Dog, "Lucky"),
    show_profile(Dog_).

make_dog() ->
    #dog{}.

set_name(Dog, Name) ->
    Dog#dog{name = Name}.

show_profile(Dog) ->
    io:format("Its name is ~s.~n", [Dog#dog.name]).
