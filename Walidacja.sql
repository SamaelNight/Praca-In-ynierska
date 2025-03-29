--Kompletność danych:
Select * from ['As(PM10)$'] where 
Rok is null or
Województwo is null or
[Kod strefy] is null or
[Nazwa strefy] is null or
[Kod stacji] is null or
Wskaźnik is null or
[Czas uśredniania] is null or
Średnia is null or
Min	is null or
Maks is null or
[Liczba ważnych pom#] is null or
Kompletność is null
--Wnioski: Był jedne rekord bez zadnych danych
Select * from ['BaP(PM10)$'] where 
Rok is null or
Województwo is null or
[Kod strefy] is null or
[Nazwa strefy] is null or
[Kod stacji] is null or
Wskaźnik is null or
[Czas uśredniania] is null or
Średnia is null or
Min	is null or
Maks is null or
[Liczba ważnych pom#] is null or
Kompletność is null
--Wnioski: Był jedne rekord bez zadnych danych
Select * from C6H6$ where 
Rok is null or
Województwo is null or
[Kod strefy] is null or
[Nazwa strefy] is null or
[Kod stacji] is null or
Wskaźnik is null or
[Czas uśredniania] is null or
Średnia is null or
Min	is null or
Maks is null or
[Liczba pomiarów] is null or
Kompletność is null
--Wnioski:Był jedne rekord bez zadnych danych
Select * from ['Cd(PM10)$'] where 
Rok is null or
Województwo is null or
[Kod strefy] is null or
[Nazwa strefy] is null or
[Kod stacji] is null or
Wskaźnik is null or
[Czas uśredniania] is null or
Średnia is null or
Min	is null or
Maks is null or
[Liczba ważnych pom#] is null or
Kompletność is null
--Wnioski:Był jedne rekord bez zadnych danych
Select * from CO$ where 
Rok is null or
Województwo is null or
[Kod strefy] is null or
[Nazwa strefy] is null or
[Kod stacji] is null or
Wskaźnik is null or
[Czas uśredniania] is null or
Średnia is null or
Min	is null or
Maks is null or
[Liczba pomiarów] is null or
Kompletność is null
--Wnioski:Był jedne rekord bez zadnych danych
Select * from ['Ni(PM10)$'] where 
Rok is null or
Województwo is null or
[Kod strefy] is null or
[Nazwa strefy] is null or
[Kod stacji] is null or
Wskaźnik is null or
[Czas uśredniania] is null or
Średnia is null or
Min	is null or
Maks is null or
[Liczba ważnych pom#] is null or
Kompletność is null
--Wnioski:Było siedem rekord bez zadnych danych
Select * from NO2$ where 
Rok is null or
Województwo is null or
[Kod strefy] is null or
[Nazwa strefy] is null or
[Kod stacji] is null or
Wskaźnik is null or
[Czas uśredniania] is null or
Średnia is null or
Min	is null or
Maks is null or
[Liczba pomiarów] is null or
Kompletność is null
--Wnioski:Był jedne rekord bez zadnych danych
Select * from NOx$ where 
Rok is null or
Województwo is null or
[Kod strefy] is null or
[Nazwa strefy] is null or
[Kod stacji] is null or
Wskaźnik is null or
[Czas uśredniania] is null or
Średnia is null or
Min	is null or
Maks is null or
[Liczba pomiarów] is null or
Kompletność is null
--Wnioski:Był jedne rekord bez zadnych danych
Select * from O3$ where 
Rok is null or
Województwo is null or
[Kod strefy] is null or
[Nazwa strefy] is null or
[Kod stacji] is null or
Wskaźnik is null or
[Czas uśredniania] is null or
Średnia is null or
Min	is null or
Max is null or
[Liczba pomiarów] is null or
Kompletność is null
--Wnioski:Był jedne rekord bez zadnych danych
Select * from SO2$ where 
Rok is null or
Województwo is null or
[Kod strefy] is null or
[Nazwa strefy] is null or
[Kod stacji] is null or
Wskaźnik is null or
[Czas uśredniania] is null or
Średnia is null or
Min	is null or
Maks is null or
[Liczba pomiarów] is null or
Kompletność is null
--Wnioski:Był jedne rekord bez zadnych danych
Select * from STACJE$ where
[Kod stacji] is null or
--[Kod międzynarodowy] is null or
[Nazwa stacji] is null or
--[Stary Kod stacji _(o ile inny od aktualnego)] is null or
[Data uruchomienia] is null or
--[Data zamknięcia] is null or
[Typ stacji] is null or
[Typ obszaru] is null or
[Rodzaj stacji] is null or
[Województwo] is null or
[Miejscowość] is null or
--[Adres] is null or
[WGS84 φ N] is null or
[WGS84 λ E] is null
--Wnioski:Był jedne rekord bez zadnych danych
Select * from STANOWISKA$ where
[Kod stanowiska] is null or
[Kod stacji] is null or
[Nazwa stacji] is null or
[Wskaźnik - kod] is null or
[Wskaźnik] is null or
[Czas uśredniania] is null or
[Typ pomiaru] is null or
--[Data uruchomienia] is null or
--[Data zamknięcia] is null or
[Województwo] is null or
[Nazwa strefy] is null
or
[Kod stanowiska]='#REF!' or
[Kod stacji]='#REF!' or
[Nazwa stacji]='#REF!' or
[Wskaźnik - kod]='#REF!' or
[Wskaźnik]='#REF!' or
[Czas uśredniania]='#REF!' or
[Typ pomiaru]='#REF!' or
--[Data uruchomienia]='#REF!' or
--[Data zamknięcia]='#REF!' or
[Województwo]='#REF!' or
[Nazwa strefy]='#REF!'
--Wnioski:Było 27 rekord bez zadnych danych lub z błednym wprowadzeniem w Excel ('#REF!')

--Czyszczenie pustych rekordów
Delete from ['As(PM10)$'] where Rok is NULL
--Czyszczenie błednych rekordów
Delete from STANOWISKA$ where Województwo='#REF!'

--Poprawność typów danych
Select * from STANOWISKA$ where
[Kod stanowiska]  like 'Brak%'  or
[Kod stacji]  like 'Brak%'  or
[Nazwa stacji]  like 'Brak%'  or
[Wskaźnik - kod]  like 'Brak%'  or
[Wskaźnik]  like 'Brak%'  or
[Czas uśredniania]  like 'Brak%'  or
[Typ pomiaru]  like 'Brak%'  or
--[Data uruchomienia]  like 'Brak%'  or
--[Data zamknięcia]  like 'Brak%'  or
[Województwo]  like 'Brak%'  or
[Nazwa strefy]  like 'Brak%' 

Select * from STACJE$
Where Miejscowość='0'

Update STACJE$
Set Miejscowość='Piechowice'
Where Nr=100

Update STACJE$
Set Miejscowość='Włocławek'
Where Nr=255

SELECT [Kod stacji]
FROM (
    SELECT [Kod stacji] FROM ['As(PM10)$']
    UNION SELECT [Kod stacji] FROM ['BaP(PM10)$']
    UNION SELECT [Kod stacji]  from C6H6$
    UNION SELECT [Kod stacji]  from ['Cd(PM10)$']
    UNION SELECT [Kod stacji]  from CO$
    UNION SELECT [Kod stacji]  from ['Ni(PM10)$']
    UNION SELECT [Kod stacji]  from NO2$
    UNION SELECT [Kod stacji]  from NOx$
    UNION SELECT [Kod stacji]  from O3$
    UNION SELECT [Kod stacji] from SO2$
) AS [Kod stacji]
Where [Kod stacji] not in (Select [Kod stacji] from STACJE$)
ORDER BY [Kod stacji] ASC;

--Spójność wartości słownikowych
SELECT DISTINCT Województwo
FROM (
    SELECT Województwo FROM ['As(PM10)$']
    UNION SELECT Województwo FROM ['BaP(PM10)$']
    UNION SELECT Województwo  from C6H6$
    UNION SELECT Województwo  from ['Cd(PM10)$']
    UNION SELECT Województwo  from CO$
    UNION SELECT Województwo  from ['Ni(PM10)$']
    UNION SELECT Województwo  from NO2$
    UNION SELECT Województwo  from NOx$
    UNION SELECT Województwo  from O3$
    UNION SELECT Województwo from SO2$
    UNION SELECT Województwo  from STACJE$
    UNION SELECT Województwo  from STANOWISKA$
) AS Województwo
ORDER BY Województwo ASC;

SELECT DISTINCT Wskaźnik
FROM (
    SELECT Wskaźnik FROM ['As(PM10)$']
    UNION SELECT Wskaźnik FROM ['BaP(PM10)$']
    UNION SELECT Wskaźnik  from C6H6$
    UNION SELECT Wskaźnik  from ['Cd(PM10)$']
    UNION SELECT Wskaźnik  from CO$
    UNION SELECT Wskaźnik  from ['Ni(PM10)$']
    UNION SELECT Wskaźnik  from NO2$
    UNION SELECT Wskaźnik  from NOx$
    UNION SELECT Wskaźnik  from O3$
    UNION SELECT Wskaźnik from SO2$
    --UNION SELECT Wskaźnik  from STACJE$
    UNION SELECT Wskaźnik  from STANOWISKA$
) AS Wskaźnik
ORDER BY Wskaźnik ASC;

SELECT DISTINCT [Czas uśredniania]
FROM (
    SELECT [Czas uśredniania] FROM ['As(PM10)$']
    UNION SELECT [Czas uśredniania] FROM ['BaP(PM10)$']
    UNION SELECT [Czas uśredniania]  from C6H6$
    UNION SELECT [Czas uśredniania]  from ['Cd(PM10)$']
    UNION SELECT [Czas uśredniania]  from CO$
    UNION SELECT [Czas uśredniania]  from ['Ni(PM10)$']
    UNION SELECT [Czas uśredniania]  from NO2$
    UNION SELECT [Czas uśredniania]  from NOx$
    UNION SELECT [Czas uśredniania]  from O3$
    UNION SELECT [Czas uśredniania] from SO2$
    --UNION SELECT [Czas uśredniania]  from STACJE$
    UNION SELECT [Czas uśredniania]  from STANOWISKA$
) AS [Czas uśredniania]
ORDER BY [Czas uśredniania] ASC;

SELECT DISTINCT [Nazwa strefy]
FROM (
    SELECT [Nazwa strefy] FROM ['As(PM10)$']
    UNION SELECT [Nazwa strefy] FROM ['BaP(PM10)$']
    UNION SELECT [Nazwa strefy]  from C6H6$
    UNION SELECT [Nazwa strefy]  from ['Cd(PM10)$']
    UNION SELECT [Nazwa strefy]  from CO$
    UNION SELECT [Nazwa strefy]  from ['Ni(PM10)$']
    UNION SELECT [Nazwa strefy]  from NO2$
    UNION SELECT [Nazwa strefy]  from NOx$
    UNION SELECT [Nazwa strefy]  from O3$
    UNION SELECT [Nazwa strefy] from SO2$
    --UNION SELECT [Czas uśredniania]  from STACJE$
    UNION SELECT [Nazwa strefy]  from STANOWISKA$
) AS [Nazwa strefy]
ORDER BY [Nazwa strefy] ASC;

SELECT DISTINCT [Typ stacji]
FROM (
    SELECT [Typ stacji]  from STACJE$
) AS [Typ stacji]
ORDER BY [Typ stacji] ASC;

SELECT DISTINCT [Typ obszaru]
FROM (
    SELECT [Typ obszaru]  from STACJE$
) AS [Typ obszaru]
ORDER BY [Typ obszaru] ASC;

SELECT DISTINCT [Rodzaj Stacji]
FROM (
    SELECT [Rodzaj Stacji]  from STACJE$
) AS [Rodzaj Stacji]
ORDER BY [Rodzaj Stacji] ASC;

SELECT DISTINCT Miejscowość
FROM (
    SELECT Miejscowość  from STACJE$
) AS Miejscowość
ORDER BY Miejscowość ASC;

SELECT DISTINCT [Typ pomiaru]
FROM (
    SELECT [Typ pomiaru]  from STANOWISKA$
) AS [Typ pomiaru]
ORDER BY [Typ pomiaru] ASC;

--Zakresy wartości liczbowych
SELECT *
FROM (
    SELECT Min,Maks,Średnia,Kompletność FROM ['As(PM10)$']
    UNION SELECT Min,Maks,Średnia,Kompletność FROM ['BaP(PM10)$']
    UNION SELECT Min,Maks,Średnia,Kompletność  from C6H6$
    UNION SELECT Min,Maks,Średnia,Kompletność  from ['Cd(PM10)$']
    UNION SELECT Min,Maks,Średnia,Kompletność  from CO$
    UNION SELECT Min,Maks,Średnia,Kompletność  from ['Ni(PM10)$']
    UNION SELECT Min,Maks,Średnia,Kompletność  from NO2$
    UNION SELECT Min,Maks,Średnia,Kompletność  from NOx$
    UNION SELECT Min,Max as Maks,Średnia,Kompletność  from O3$
    UNION SELECT Min,Maks,Średnia,Kompletność from SO2$
    --UNION SELECT [Czas uśredniania]  from STACJE$
    --UNION SELECT [Nazwa strefy]  from STANOWISKA$
) AS Wartości
Where Min>Średnia 
or Średnia>Maks 
or Min>Maks 
or Min<0 
or Średnia<0 
or Maks<0
or Kompletność<0

--Zamiana ujemnych wartości minimalnych na dodatnie
Update C6H6$
Set Min=Min*-1
Where Min<0

Update CO$
Set Min=Min*-1
Where Min<0

Update NO2$
Set Min=Min*-1
Where Min<0

Update NOx$
Set Min=Min*-1
Where Min<0

Update O3$
Set Min=Min*-1
Where Min<0

Update SO2$
Set Min=Min*-1
Where Min<0
--Brak duplikatów
SELECT Rok,Województwo,[Kod strefy],[Nazwa strefy],[Kod stacji],Wskaźnik,[Czas uśredniania],COUNT(*) AS LiczbaWystapien
FROM (
    SELECT Rok,Województwo,[Kod strefy],[Nazwa strefy],[Kod stacji],Wskaźnik,[Czas uśredniania] FROM ['As(PM10)$']
    UNION SELECT Rok,Województwo,[Kod strefy],[Nazwa strefy],[Kod stacji],Wskaźnik,[Czas uśredniania] FROM ['BaP(PM10)$']
    UNION SELECT Rok,Województwo,[Kod strefy],[Nazwa strefy],[Kod stacji],Wskaźnik,[Czas uśredniania]  from C6H6$
    UNION SELECT Rok,Województwo,[Kod strefy],[Nazwa strefy],[Kod stacji],Wskaźnik,[Czas uśredniania]  from ['Cd(PM10)$']
    UNION SELECT Rok,Województwo,[Kod strefy],[Nazwa strefy],[Kod stacji],Wskaźnik,[Czas uśredniania]  from CO$
    UNION SELECT Rok,Województwo,[Kod strefy],[Nazwa strefy],[Kod stacji],Wskaźnik,[Czas uśredniania]  from ['Ni(PM10)$']
    UNION SELECT Rok,Województwo,[Kod strefy],[Nazwa strefy],[Kod stacji],Wskaźnik,[Czas uśredniania]  from NO2$
    UNION SELECT Rok,Województwo,[Kod strefy],[Nazwa strefy],[Kod stacji],Wskaźnik,[Czas uśredniania]  from NOx$
    UNION SELECT Rok,Województwo,[Kod strefy],[Nazwa strefy],[Kod stacji],Wskaźnik,[Czas uśredniania]  from O3$
    UNION SELECT Rok,Województwo,[Kod strefy],[Nazwa strefy],[Kod stacji],Wskaźnik,[Czas uśredniania] from SO2$
    --UNION SELECT [Czas uśredniania]  from STACJE$
    --UNION SELECT [Nazwa strefy]  from STANOWISKA$
) AS duplikatów
GROUP BY Rok,Województwo,[Kod strefy],[Nazwa strefy],[Kod stacji],Wskaźnik,[Czas uśredniania]
HAVING COUNT(*) > 1;

SELECT [Kod stacji],[Nazwa stacji],[Typ stacji],[Typ obszaru],[Rodzaj stacji],Województwo,Miejscowość,COUNT(*) AS LiczbaWystapien
FROM (
    SELECT [Kod stacji],[Nazwa stacji],[Typ stacji],[Typ obszaru],[Rodzaj stacji],Województwo,Miejscowość  from STACJE$
    --UNION SELECT [Nazwa strefy]  from STANOWISKA$
) AS duplikatów
GROUP BY [Kod stacji],[Nazwa stacji],[Typ stacji],[Typ obszaru],[Rodzaj stacji],Województwo,Miejscowość
HAVING COUNT(*) > 1;

SELECT [Kod stanowiska],COUNT(*) AS LiczbaWystapien
FROM (
    SELECT [Kod stanowiska] from STANOWISKA$
) AS duplikatów
GROUP BY [Kod stanowiska]
HAVING COUNT(*) > 1;

--Wiarygodność danych
SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność
FROM (
    SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność FROM ['As(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność FROM ['BaP(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from C6H6$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from ['Cd(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from CO$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from ['Ni(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from NO2$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from NOx$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from O3$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność from SO2$
    --UNION SELECT [Czas uśredniania]  from STACJE$
    --UNION SELECT [Nazwa strefy]  from STANOWISKA$
) AS Wiarygodność
Where Kompletność<=10 and Rok>=2002 and Rok<=2022
order by Rok,Województwo,Wskaźnik

SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność
FROM (
    SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność FROM ['As(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność FROM ['BaP(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from C6H6$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from ['Cd(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from CO$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from ['Ni(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from NO2$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from NOx$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from O3$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność from SO2$
    --UNION SELECT [Czas uśredniania]  from STACJE$
    --UNION SELECT [Nazwa strefy]  from STANOWISKA$
) AS Wiarygodność
Where Kompletność<=25 and Kompletność>10 and Rok>=2002 and Rok<=2022
order by Rok,Województwo,Wskaźnik

SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność
FROM (
    SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność FROM ['As(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność FROM ['BaP(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from C6H6$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from ['Cd(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from CO$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from ['Ni(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from NO2$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from NOx$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from O3$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność from SO2$
    --UNION SELECT [Czas uśredniania]  from STACJE$
    --UNION SELECT [Nazwa strefy]  from STANOWISKA$
) AS Wiarygodność
Where Kompletność<=50 and Kompletność>25 and Rok>=2002 and Rok<=2022
order by Rok,Województwo,Wskaźnik

SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność
FROM (
    SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność FROM ['As(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność FROM ['BaP(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from C6H6$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from ['Cd(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from CO$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from ['Ni(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from NO2$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from NOx$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from O3$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność from SO2$
    --UNION SELECT [Czas uśredniania]  from STACJE$
    --UNION SELECT [Nazwa strefy]  from STANOWISKA$
) AS Wiarygodność
Where Kompletność<=75 and Kompletność>50 and Rok>=2002 and Rok<=2022
order by Rok,Województwo,Wskaźnik

SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność
FROM (
    SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność FROM ['As(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność FROM ['BaP(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from C6H6$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from ['Cd(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from CO$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from ['Ni(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from NO2$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from NOx$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from O3$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność from SO2$
    --UNION SELECT [Czas uśredniania]  from STACJE$
    --UNION SELECT [Nazwa strefy]  from STANOWISKA$
) AS Wiarygodność
Where Kompletność<=90 and Kompletność>75 and Rok>=2002 and Rok<=2022
order by Rok,Województwo,Wskaźnik

SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność
FROM (
    SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność FROM ['As(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność FROM ['BaP(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from C6H6$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from ['Cd(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from CO$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from ['Ni(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from NO2$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from NOx$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from O3$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność from SO2$
    --UNION SELECT [Czas uśredniania]  from STACJE$
    --UNION SELECT [Nazwa strefy]  from STANOWISKA$
) AS Wiarygodność
Where Kompletność>90 and Rok>=2002 and Rok<=2022
order by Rok,Województwo,Wskaźnik

SELECT *
FROM (
    SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność FROM ['As(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność FROM ['BaP(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from C6H6$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from ['Cd(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from CO$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from ['Ni(PM10)$']
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from NO2$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from NOx$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność  from O3$
    UNION SELECT Rok,Województwo,[Kod stacji],Wskaźnik,[Czas uśredniania],Kompletność from SO2$
    --UNION SELECT [Czas uśredniania]  from STACJE$
    --UNION SELECT [Nazwa strefy]  from STANOWISKA$
) AS Wiarygodność
Where Rok>=2002 and Rok<=2022
