#!/usr/bin/env escript
-record(dog, {breed, name, age}).

main(_) ->
    D1 = #dog{breed = "golden retriever"},
    D1_ = D1#dog{name = "poti", age = 2},
    show_profile(D1_).

show_profile(Dog) ->
    io:format("Breed: ~s; Name: ~s; Age: ~p~n", [Dog#dog.breed, Dog#dog.name, Dog#dog.age]).
