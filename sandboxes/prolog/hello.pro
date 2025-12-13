greet(Name) :-
    format('Hello, ~w!~n', [Name]).

:- greet('World').
