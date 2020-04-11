# IZU-tasks

## 1.úloha PROLOG

Zadání:

Naprogramujte v jazyce Prolog s využitím prostředí SWI prolog následující příklady (resp. Vám zadaný
příklad). Z vestavěných predikátů je povoleno používat pouze predikáty member/2 a append/3.
Poznámky:

Uvědomte si prosím, že přestože je každý příklad zadán formulí Definujte … predikát, který je platný
pokud … a příklady obsahují termy jiné než proměnné, obvykle se predikáty používají tím způsobem,
že jeden z termů je proměnná a navázaný objekt je ‚výsledkem výpočtu’. Vzhledem k ale tomu, že
PROLOG vychází z predikátové logiky, zvolili jsme tuto formu o platnosti, případně neplatnosti
atomických formulí (predikátů).
Číslování zadání navazuje na příklady z logiky. Zadání jsou dale rozdělena do skupin po šesti (poslední
skupina po čtyřech) tak, že každá skupina má jinou formu prvního termu (ne přiliš správně z formálního
pohledu bychom toto opět mohli vnímat jako jakýsi vstup).

```
25. Definujte v jazyce PROLOG predikát
ulohaA3(L, X, LOUT)
který je platný, pokud je LOUT navázán na seznam všech existujících dvojic A, B z L takových,
že X-A=B-X (čísla jsou opačná podle X). Dvojice reprezentujte predikátem inv(A,B).
Příklad platných predikátů:
ulohaA3([1,5,8,9], 3, [[1,5]).
ulohaA3([1,3,5,6,8,10,11,12,31], 7, [inv(6,8),inv(3,11)]).
```

## 2.úloha ID3 decision trees

Demonstrujte princip generování rozhodovacích stromů pro vám přiřazený příklad. Aplikujte
algoritmus ID3 (Iterative Dichotomiser 3).

```
zadanie id3-27

attributes {
    outlook : sunny overcast rain
    temp : cool mild hot
    humidity : high normal
    windy : true false
}

classes {
    P
    N
}

objects {
    1 P sunny mild high true
    2 P sunny mild normal true
    3 P overcast cool normal false
    4 N sunny mild high false
    5 N overcast mild normal false
    6 N rain mild high false
    7 P overcast mild high false
    8 P rain hot normal true
    9 N sunny hot normal false
    10 N overcast hot normal true
    11 N rain hot normal false
    12 N sunny mild normal false
}
```

