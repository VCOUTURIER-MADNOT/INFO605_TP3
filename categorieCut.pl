% Règle d'affichage qui est censé être utilisé qu'avec des variables déjà unifiées

affiche(Categorie) :- write('Vous êtes est dans la catégorie '), writeln(Categorie).

% Règle qui indique affiche, en sport, à quelle categorie appartient une personne
% Age est censée déjà être unifiée avec un entier

categorie(Age) :-  Age < 9, affiche('bébé'), !. 
categorie(Age) :-  Age < 12, affiche('poussin'), !. 
categorie(Age) :-  Age < 14, affiche('benjamin'), !.
categorie(Age) :-  Age < 16, affiche('minime'), !.
categorie(Age) :-  Age < 18, affiche('cadet'), !.
categorie(Age) :-  Age < 20, affiche('junior'), !.
categorie(Age) :-  Age < 23, affiche('espoir'), !.
categorie(_) :-  affiche('senior').
