% predikát, ktorý zabezpečuje, že "L" bude monotónne rastúci.
l_list([]).
l_list([_]).
l_list([X,Y|T]) :-
   X=<Y,
   l_list([Y|T]).

% predikát zisťujúci dlžku listu "L"
list_length(Xs,L) :- list_length(Xs,0,L) ,
	l_list(Xs).
list_length( [] , L , L ) .
list_length( [_|Xs] , T , L ) :-
  T1 is T+1 ,
  list_length(Xs,T1,L).

% predikát, ktorý zabezpečuje že sa vyberie "N" prvkov z listu [X|T1]
take([_|_], 0, []).
take([H|_],1,[H]).
take([X|T1],N,[X|T2]):- N>=0, N1 is N-1,
	take(T1,N1,T2).

% predikát vytvárajúci jednotlivé K-tice podla "Nelems" a je ich pocet "N"
loat_lists([_|_],0,0,[]).
loat_lists([H|T],1,_,[[H|T]]).
loat_lists([H|T], N, Nelems, [Listhead|Listtail]) :- N>= 0, N1 is N-1,
	take([H|T], Nelems, Listhead),
	loat_lists(T,N1,Nelems, Listtail).

% predikát na nájdenie posledného prvku v liste
lastElement(X,[X]).
lastElement(X,[_|L]) :- lastElement(X,L).

% ziska hodnotu rozdielu posledneho elementu listu od prvého
subFL([First|Tail], Sub) :- lastElement(Last, Tail),
	Sub is Last - First.

% porovná ktorý súčet je väčší a ten sa použije ďalej
comp(One, Two, Ret) :-  
	subFL(One, Sub1), subFL(Two, Sub2),
	Sub1 >= Sub2, 
	append(One, [], Ret).
comp(One, Two, Ret) :-  
	subFL(One, Sub1), subFL(Two, Sub2),
	Sub1 < Sub2, 
	append(Two, [], Ret).

% zistí výsledok "LOAT" pre celú ulohaA5
maxSub([],false	).
maxSub([P],P).
maxSub([LoatHead1,LoatHead2|LoatTail], P) :- 	
	comp(LoatHead1,LoatHead2,Res),	
	maxSub([Res|LoatTail], P).

%predikát ulohaA5 vyplyvajuci zo zadania ulohaA5(L,N,Loat)
ulohaA5(_, 0, []).
ulohaA5([First|_], 1, [First]).
ulohaA5( [L|Ltail], N, FinalRes ) :-
	l_list([L|Ltail]),list_length([L|Ltail], N1), N =< N1,
	Count is N1 - N + 1,
	loat_lists([L|Ltail],Count,N,[Loatlists|Listtail]),
	maxSub([Loatlists|Listtail],FinalRes).