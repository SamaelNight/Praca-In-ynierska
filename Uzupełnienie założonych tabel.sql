--Uzupe³nienie tabel s³ownikowych
Insert into Miasto(Miasto)
Select Distinct Miejscowość from STACJE$

Insert into [Nazwa Strefy]([Nazwa Strefy])
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
    --UNION SELECT [Czas uŚredniania]  from STACJE$
    UNION SELECT [Nazwa strefy]  from STANOWISKA$
) AS [Nazwa strefy]
ORDER BY [Nazwa strefy] ASC;

Insert into [Rodzaj Stacji]([Rodzaj Stacji])
Select Distinct [Rodzaj stacji] from STACJE$

Insert into [Średni Czas]([Średni Czas],[Średni Czas Kod])
values
('24-godzinny','24g'),
('1-godzinny','1g'),
('2-tygodniowy','2t'),
('miesiêczny','1m')

Insert into [Typ Obszaru]([Typ Obszaru])
Select Distinct [Typ obszaru] from STACJE$

Insert Into [Typ Pomiaru]([Typ Pomiaru])
Select Distinct [Typ pomiaru] from STANOWISKA$

Insert Into [Typ Stacji]([Typ Stacji])
Select Distinct [Typ Stacji] from STACJE$

Insert Into Województwo(Województwo)
Select Distinct Województwo from STACJE$
order by Województwo

Insert Into Wskaźnik(Wskaźnik,[Wskaźnik Kod])
Select Distinct Wskaźnik,[Wskaźnik - kod] from STANOWISKA$

Insert Into Stacja ([Kod Stacji],[Nazwa Stacji],[Data Uruchomienia],[Data Zamknięcia],[Współrzędne Północ],[Współrzędne Wschód],[Typ StacjiId],[Typ ObszaruId],[Rodzaj StacjiId],[WojewództwoId],MiastoId)
Select [Kod stacji]
      ,[Nazwa stacji]
      ,[Data uruchomienia]
      ,[Data zamknięcia]
	  ,[WGS84 φ N]
	  ,[WGS84 λ E]
      ,(Select Id from [Typ Stacji] where [Typ Stacji]=st.[Typ stacji]) as [Typ stacji]
      ,(Select Id from [Typ Obszaru] where [Typ Obszaru]=st.[Typ obszaru]) as [Typ obszaru]
      ,(Select Id from [Rodzaj Stacji] where [Rodzaj Stacji]=st.[Rodzaj stacji]) as [Rodzaj stacji]
      ,(Select Id from Województwo where Województwo=st.[Województwo]) as [Województwo]
      ,(Select Id from Miasto where Miasto=st.Miejscowość) as [Miejscowość]
	  from Stacje$ st

Insert Into Stanowisko([Data Uruchomienia],[Data Zamknięcia],StacjaId,WskaźnikId,[Średni CzasId],[Typ PomiaruId],[Nazwa StrefyId])
Select  [Data uruchomienia]
      ,[Data Zamknięcia]
	  ,(Select Id from Stacja where [Kod Stacji]=st.[Kod stacji]) as [Kod stacji]
      ,(Select Id from Wskaźnik where [Wskaźnik Kod]=st.[Wskaźnik - kod]) as [Wskaźnik - kod]
      ,(Select Id from [Średni Czas] where [Średni Czas]=st.[Czas uŚredniania]) as [Czas uŚredniania]
      ,(Select Id from [Typ Pomiaru] where [Typ Pomiaru]=st.[Typ pomiaru]) as [Typ pomiaru]
      ,(Select Id from [Nazwa Strefy] where [Nazwa Strefy]=st.[Nazwa strefy]) as [Nazwa strefy]
	  from Stanowiska$ st

Insert Into [Jakość Powietrza](Rok,StanowiskoId,Średnia,[Liczba Pomiarów],Kompletność,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) as StanowiskoId,
[Średnia],[Liczba ważnych pom#],[Kompletność],Min,Maks
from ['As(PM10)$'] Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletność]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) is not null
order by Rok

Insert Into [Jakość Powietrza](Rok,StanowiskoId,Średnia,[Liczba Pomiarów],Kompletność,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) as StanowiskoId,
[Średnia],[Liczba ważnych pom#],[Kompletność],Min,Maks
from ['BaP(PM10)$'] Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletność]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) is not null
order by Rok

Insert Into [Jakość Powietrza](Rok,StanowiskoId,Średnia,[Liczba Pomiarów],Kompletność,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) as StanowiskoId,
[Średnia],[Liczba pomiarów],[Kompletność ],Min,Maks
from C6H6$ Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletność ]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) is not null
order by Rok

Insert Into [Jakość Powietrza](Rok,StanowiskoId,Średnia,[Liczba Pomiarów],Kompletność,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) as StanowiskoId,
[Średnia],[Liczba ważnych pom#],[Kompletność],Min,Maks
from ['Cd(PM10)$'] Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletność]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) is not null
order by Rok

Insert Into [Jakość Powietrza](Rok,StanowiskoId,Średnia,[Liczba Pomiarów],Kompletność,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) as StanowiskoId,
[Średnia],[Liczba pomiarów],[Kompletność ],Min,Maks
from CO$ Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletność ]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) is not null
order by Rok

Insert Into [Jakość Powietrza](Rok,StanowiskoId,Średnia,[Liczba Pomiarów],Kompletność,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) as StanowiskoId,
[Średnia],[Liczba ważnych pom#],[Kompletność],Min,Maks
from ['Ni(PM10)$'] Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletność]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) is not null
order by Rok

Insert Into [Jakość Powietrza](Rok,StanowiskoId,Średnia,[Liczba Pomiarów],Kompletność,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) as StanowiskoId,
[Średnia],[Liczba pomiarów],[Kompletność ],Min,Maks
from NO2$ Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletność ]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) is not null
order by Rok

Insert Into [Jakość Powietrza](Rok,StanowiskoId,Średnia,[Liczba Pomiarów],Kompletność,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) as StanowiskoId,
[Średnia],[Liczba pomiarów],[Kompletność ],Min,Maks
from NOx$ Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletność ]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) is not null
order by Rok

Insert Into [Jakość Powietrza](Rok,StanowiskoId,Średnia,[Liczba Pomiarów],Kompletność,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) as StanowiskoId,
[Średnia],[Liczba pomiarów],[Kompletność],Min,Max
from O3$ Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletność]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) is not null
order by Rok

Insert Into [Jakość Powietrza](Rok,StanowiskoId,Średnia,[Liczba Pomiarów],Kompletność,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) as StanowiskoId,
[Średnia],[Liczba pomiarów],[Kompletność ],Min,Maks
from SO2$ Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletność ]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaźnikId=(Select Id from Wskaźnik where [Wskaźnik Kod]=Wsk.[Wskaźnik]) and [Średni CzasId]=(Select Id from [Średni Czas] where [Średni Czas Kod]=[Czas uŚredniania])) is not null
order by Rok

