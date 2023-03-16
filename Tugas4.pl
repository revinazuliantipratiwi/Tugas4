laki(david).
laki(jack).
laki(john).
laki(ray).
laki(peter).

perempuan(amy).
perempuan(karen).
perempuan(liza).
perempuan(susan).
perempuan(mary).

menikah(david, amy).
menikah(jack, karen).
menikah(john, susan).

ayah(david, liza).
ayah(david, john).
ayah(jack, susan).
ayah(jack, ray).
ayah(john, peter).
ayah(john, mary).

ibu(amy, liza).
ibu(amy, john).
ibu(karen, susan).
ibu(karen, ray).
ibu(susan, peter).
ibu(susan, mary).

is_ayah(X, Y) :- ayah(X, Y).
is_ibu(X, Y) :- ibu(X, Y).
is_orangtua(X, Y) :- (ayah(X, Y) ; ibu(X, Y)).
is_anak(X, Y) :- (ayah(Y, X) ; ibu(Y, X)).
is_sodara(Y, Z) :- is_orangtua(X, Y), is_orangtua(X, Z).
is_kakek(X, Z) :- ayah(X, Y), is_anak(Z, Y).
is_nenek(X, Z) :- ibu(X, Y), is_anak(Z, Y).
is_cucu(X, Y) :- (is_kakek(Y, X) ; is_nenek(Y, X)).
is_om(X, Y) :- laki(X), is_sodara(X, Z), is_anak(Y, Z).
is_tante(X, Y) :- perempuan(X), is_sodara(X, Z), is_anak(Y, Z).


