min(X,Y,X) :- X<Y,!.
min(_,Y,Y). 

pere(barbapapa, barbouille).
pere(barbapapa, barbalala).
pere(barbapapa, barbotine).
pere(barbapapa, barbibul).
pere(barbapapa, barbidou).
pere(barbapapa, barbabelle).
pere(barbapapa, barbidur).

mere(barbamama, barbouille).
mere(barbamama, barbalala).
mere(barbamama, barbotine).
mere(barbamama, barbibul).
mere(barbamama, barbidou).
mere(barbamama, barbabelle).
mere(barbamama, barbidur).

parent(X,Y) :- pere(X,Y), !.
parent(X,Y) :- mere(X,Y).
