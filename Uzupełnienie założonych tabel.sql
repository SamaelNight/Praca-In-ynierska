--Uzupe≥nienie tabel s≥ownikowych
Insert into Miasto(Miasto)
Select Distinct MiejscowoúÊ from STACJE$

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
    --UNION SELECT [Czas uúredniania]  from STACJE$
    UNION SELECT [Nazwa strefy]  from STANOWISKA$
) AS [Nazwa strefy]
ORDER BY [Nazwa strefy] ASC;

Insert into [Rodzaj Stacji]([Rodzaj Stacji])
Select Distinct [Rodzaj stacji] from STACJE$

Insert into [åredni Czas]([åredni Czas],[åredni Czas Kod])
values
('24-godzinny','24g'),
('1-godzinny','1g'),
('2-tygodniowy','2t'),
('miesiÍczny','1m')

Insert into [Typ Obszaru]([Typ Obszaru])
Select Distinct [Typ obszaru] from STACJE$

Insert Into [Typ Pomiaru]([Typ Pomiaru])
Select Distinct [Typ pomiaru] from STANOWISKA$

Insert Into [Typ Stacji]([Typ Stacji])
Select Distinct [Typ Stacji] from STACJE$

Insert Into WojewÛdütwo(WojewÛdütwo)
Select Distinct WojewÛdztwo from STACJE$
order by WojewÛdztwo

Insert Into Wskaünik(Wskaünik,[Wskaünik Kod])
Select Distinct Wskaünik,[Wskaünik - kod] from STANOWISKA$

Insert Into Stacja ([Kod Stacji],[Nazwa Stacji],[Data Uruchomienia],[Data ZamkniÍcia],[Typ StacjiId],[Typ ObszaruId],[Rodzaj StacjiId],WojewÛdütwoId,MiastoId)
Select [Kod stacji]
      ,[Nazwa stacji]
      ,[Data uruchomienia]
      ,[Data zamkniÍcia]
      ,(Select Id from [Typ Stacji] where [Typ Stacji]=st.[Typ stacji]) as [Typ stacji]
      ,(Select Id from [Typ Obszaru] where [Typ Obszaru]=st.[Typ obszaru]) as [Typ obszaru]
      ,(Select Id from [Rodzaj Stacji] where [Rodzaj Stacji]=st.[Rodzaj stacji]) as [Rodzaj stacji]
      ,(Select Id from WojewÛdütwo where WojewÛdütwo=st.[WojewÛdztwo]) as [WojewÛdztwo]
      ,(Select Id from Miasto where Miasto=st.[MiejscowoúÊ]) as [MiejscowoúÊ]
	  from Stacje$ st

Insert Into Stanowisko([Data Uruchomienia],[Data ZamkniÍcia],StacjaId,WskaünikId,[åredni CzasId],[Typ PomiaruId],[Nazwa StrefyId])
Select  [Data uruchomienia]
      ,[Data zamkniÍcia]
	  ,(Select Id from Stacja where [Kod Stacji]=st.[Kod stacji]) as [Kod stacji]
      ,(Select Id from Wskaünik where [Wskaünik Kod]=st.[Wskaünik - kod]) as [Wskaünik - kod]
      ,(Select Id from [åredni Czas] where [åredni Czas]=st.[Czas uúredniania]) as [Czas uúredniania]
      ,(Select Id from [Typ Pomiaru] where [Typ Pomiaru]=st.[Typ pomiaru]) as [Typ pomiaru]
      ,(Select Id from [Nazwa Strefy] where [Nazwa Strefy]=st.[Nazwa strefy]) as [Nazwa strefy]
	  from Stanowiska$ st

Insert Into [JakoúÊ Powietrza](Rok,StanowiskoId,årednia,[Liczba PomiarÛw],KompletnoúÊ,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) as StanowiskoId,
[årednia],[Liczba waønych pom#],[KompletnoúÊ],Min,Maks
from ['As(PM10)$'] Wsk
where Wsk.Rok>= 2002 and Wsk.[KompletnoúÊ]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) is not null
order by Rok

Insert Into [JakoúÊ Powietrza](Rok,StanowiskoId,årednia,[Liczba PomiarÛw],KompletnoúÊ,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) as StanowiskoId,
[årednia],[Liczba waønych pom#],[KompletnoúÊ],Min,Maks
from ['BaP(PM10)$'] Wsk
where Wsk.Rok>= 2002 and Wsk.[KompletnoúÊ]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) is not null
order by Rok

Insert Into [JakoúÊ Powietrza](Rok,StanowiskoId,årednia,[Liczba PomiarÛw],KompletnoúÊ,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) as StanowiskoId,
[årednia],[Liczba pomiarÛw],[KompletnoúÊ],Min,Maks
from C6H6$ Wsk
where Wsk.Rok>= 2002 and Wsk.[KompletnoúÊ]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) is not null
order by Rok

Insert Into [JakoúÊ Powietrza](Rok,StanowiskoId,årednia,[Liczba PomiarÛw],KompletnoúÊ,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) as StanowiskoId,
[årednia],[Liczba waønych pom#],[KompletnoúÊ],Min,Maks
from ['Cd(PM10)$'] Wsk
where Wsk.Rok>= 2002 and Wsk.[KompletnoúÊ]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) is not null
order by Rok

Insert Into [JakoúÊ Powietrza](Rok,StanowiskoId,årednia,[Liczba PomiarÛw],KompletnoúÊ,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) as StanowiskoId,
[årednia],[Liczba pomiarÛw],[KompletnoúÊ],Min,Maks
from CO$ Wsk
where Wsk.Rok>= 2002 and Wsk.[KompletnoúÊ]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) is not null
order by Rok

Insert Into [JakoúÊ Powietrza](Rok,StanowiskoId,årednia,[Liczba PomiarÛw],KompletnoúÊ,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) as StanowiskoId,
[årednia],[Liczba waønych pom#],[KompletnoúÊ],Min,Maks
from ['Ni(PM10)$'] Wsk
where Wsk.Rok>= 2002 and Wsk.[KompletnoúÊ]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) is not null
order by Rok

Insert Into [JakoúÊ Powietrza](Rok,StanowiskoId,årednia,[Liczba PomiarÛw],KompletnoúÊ,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) as StanowiskoId,
[årednia],[Liczba pomiarÛw],[KompletnoúÊ],Min,Maks
from NO2$ Wsk
where Wsk.Rok>= 2002 and Wsk.[KompletnoúÊ]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) is not null
order by Rok

Insert Into [JakoúÊ Powietrza](Rok,StanowiskoId,årednia,[Liczba PomiarÛw],KompletnoúÊ,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) as StanowiskoId,
[årednia],[Liczba pomiarÛw],[KompletnoúÊ],Min,Maks
from NOx$ Wsk
where Wsk.Rok>= 2002 and Wsk.[KompletnoúÊ]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) is not null
order by Rok

Insert Into [JakoúÊ Powietrza](Rok,StanowiskoId,årednia,[Liczba PomiarÛw],KompletnoúÊ,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) as StanowiskoId,
[årednia],[Liczba pomiarÛw],[KompletnoúÊ],Min,Max
from O3$ Wsk
where Wsk.Rok>= 2002 and Wsk.[KompletnoúÊ]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) is not null
order by Rok

Insert Into [JakoúÊ Powietrza](Rok,StanowiskoId,årednia,[Liczba PomiarÛw],KompletnoúÊ,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) as StanowiskoId,
[årednia],[Liczba pomiarÛw],[KompletnoúÊ],Min,Maks
from SO2$ Wsk
where Wsk.Rok>= 2002 and Wsk.[KompletnoúÊ]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and WskaünikId=(Select Id from Wskaünik where [Wskaünik Kod]=Wsk.[Wskaünik]) and [åredni CzasId]=(Select Id from [åredni Czas] where [åredni Czas Kod]=[Czas uúredniania])) is not null
order by Rok
