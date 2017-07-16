#!/usr/bin/env escript
-record(dog, {name, age}).

main(_) ->
    Lucky = #dog{},
    Lucky_ = Lucky#dog{name = "Lucky", age = 5},
    Mutt = #dog{},
    Mutt_ = Mutt#dog{name = "Mutt", age = 3},
    show_profile(Lucky_),
    show_profile(Mutt_).

show_profile(Dog) ->
    io:format("Its name is ~s. It's ~p years old.~n", [Dog#dog.name, Dog#dog.age]).
