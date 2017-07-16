#!/usr/bin/env escript
-record(dog, {name, age}).

main(_) ->
    Dog = #dog{},
    Dog_ = Dog#dog{name = "Lucky"},
    Dog__ = Dog_#dog{age = 5},
    show_profile(Dog__).

show_profile(Dog) ->
    io:format("Its name is ~s. It's ~p years old.~n", [Dog#dog.name, Dog#dog.age]).
