affiche([]).
affiche([X|L]):- write(X), affiche(L).

affichePosPair([]).
affichePosPair([_,Y|L]):-write(Y), affichePosPair(L).

affichePosImpair([]).
affichePosImpair([X]):-write(X).
affichePosImpair([Y,_|L]):-write(Y), affichePosImpair(L).

taille([],R,R).
taille([_|L],T,R):- TT is T+1, taille(L,TT,R).
taille(L,R):-taille(L,0,R).

tailleAlt([],0).
tailleAlt([_|L],T):- tailleAlt(L,R), T is R+1.

somme([],0).
somme([X|L],R):-number(X), somme(L,T), R is T+X.
somme([X|L],R):-not(number(X)),somme(L,R).

appartient(_,[]):-fail.
appartient(X,[X|_]).
appartient(X,[Y|L]):- X\=Y,appartient(X,L).

petit([X],X).
petit([X|L],X):- L\=[], petit(L,P), X=<P.
petit([X|L],P):- L\=[], petit(L,P), X>P.

concat([],L,L).
concat([X|L1],L2,[X|L3]):-concat(L1,L2,L3).

concatTri([],L,L).
concatTri(L,[],L).
concatTri([X|L1],[Y|L2],[X|L3]):- X=<Y, concatTri(L1,[Y|L2],L3).
concatTri([X|L1],[Y|L2],[Y|L3]):- X>Y, concatTri([X|L1],L2,L3).

concatUnique([], L, L).
concatUnique([X|L1], L2, L3):-appartient(X,L2),concatUnique(L1,L2,L3).
concatUnique([X|L1], L2, [X|L3]):-not(appartient(X,L2)),concatUnique(L1,L2,L3).

extraire(X,[],[]).
extraire(X,[X|L],L).
extraire(X,[Y|L],[Y|LL]):- X\=Y, extraire(X,L,LL).

trie([],[]).
trie(L1,[P|L3]):-petit(L1,P), extraire(P,L1,L2), trie(L2,L3).

app(X,[X|_]):-!.
app(X,[Y|L]):- app(X,L).

app21(X,Y,[X,Y|_]):- !.
app21(X,Y,[_,T|L]):- app2(X,Y,[T,L]).

app22(X,Y,[X,Y|_]).
app22(X,Y,[U,T|L]):- X\=U, app2(X,Y,[T,L]).

app3([],_).
app3([X|LX], L):- app(X,L),app3(LX,L).

contientListe([],_).
contientListe([X|L1],[X|L2]):- contientListe(L1,L2).

app4([],_).
app4(L1, L2):- contientListe(L1,L2).
app4(L1, [_|L2]):- app4(L1,L2).

non(X):- X,!,fail.
non(_).