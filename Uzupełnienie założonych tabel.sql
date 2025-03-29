--Uzupe�nienie tabel s�ownikowych
Insert into Miasto(Miasto)
Select Distinct Miejscowo�� from STACJE$

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
    --UNION SELECT [Czas u�redniania]  from STACJE$
    UNION SELECT [Nazwa strefy]  from STANOWISKA$
) AS [Nazwa strefy]
ORDER BY [Nazwa strefy] ASC;

Insert into [Rodzaj Stacji]([Rodzaj Stacji])
Select Distinct [Rodzaj stacji] from STACJE$

Insert into [�redni Czas]([�redni Czas],[�redni Czas Kod])
values
('24-godzinny','24g'),
('1-godzinny','1g'),
('2-tygodniowy','2t'),
('miesi�czny','1m')

Insert into [Typ Obszaru]([Typ Obszaru])
Select Distinct [Typ obszaru] from STACJE$

Insert Into [Typ Pomiaru]([Typ Pomiaru])
Select Distinct [Typ pomiaru] from STANOWISKA$

Insert Into [Typ Stacji]([Typ Stacji])
Select Distinct [Typ Stacji] from STACJE$

Insert Into Wojew�d�two(Wojew�d�two)
Select Distinct Wojew�dztwo from STACJE$
order by Wojew�dztwo

Insert Into Wska�nik(Wska�nik,[Wska�nik Kod])
Select Distinct Wska�nik,[Wska�nik - kod] from STANOWISKA$

Insert Into Stacja ([Kod Stacji],[Nazwa Stacji],[Data Uruchomienia],[Data Zamkni�cia],[Typ StacjiId],[Typ ObszaruId],[Rodzaj StacjiId],Wojew�d�twoId,MiastoId)
Select [Kod stacji]
      ,[Nazwa stacji]
      ,[Data uruchomienia]
      ,[Data zamkni�cia]
      ,(Select Id from [Typ Stacji] where [Typ Stacji]=st.[Typ stacji]) as [Typ stacji]
      ,(Select Id from [Typ Obszaru] where [Typ Obszaru]=st.[Typ obszaru]) as [Typ obszaru]
      ,(Select Id from [Rodzaj Stacji] where [Rodzaj Stacji]=st.[Rodzaj stacji]) as [Rodzaj stacji]
      ,(Select Id from Wojew�d�two where Wojew�d�two=st.[Wojew�dztwo]) as [Wojew�dztwo]
      ,(Select Id from Miasto where Miasto=st.[Miejscowo��]) as [Miejscowo��]
	  from Stacje$ st

Insert Into Stanowisko([Data Uruchomienia],[Data Zamkni�cia],StacjaId,Wska�nikId,[�redni CzasId],[Typ PomiaruId],[Nazwa StrefyId])
Select  [Data uruchomienia]
      ,[Data zamkni�cia]
	  ,(Select Id from Stacja where [Kod Stacji]=st.[Kod stacji]) as [Kod stacji]
      ,(Select Id from Wska�nik where [Wska�nik Kod]=st.[Wska�nik - kod]) as [Wska�nik - kod]
      ,(Select Id from [�redni Czas] where [�redni Czas]=st.[Czas u�redniania]) as [Czas u�redniania]
      ,(Select Id from [Typ Pomiaru] where [Typ Pomiaru]=st.[Typ pomiaru]) as [Typ pomiaru]
      ,(Select Id from [Nazwa Strefy] where [Nazwa Strefy]=st.[Nazwa strefy]) as [Nazwa strefy]
	  from Stanowiska$ st

Insert Into [Jako�� Powietrza](Rok,StanowiskoId,�rednia,[Liczba Pomiar�w],Kompletno��,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) as StanowiskoId,
[�rednia],[Liczba wa�nych pom#],[Kompletno��],Min,Maks
from ['As(PM10)$'] Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletno��]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) is not null
order by Rok

Insert Into [Jako�� Powietrza](Rok,StanowiskoId,�rednia,[Liczba Pomiar�w],Kompletno��,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) as StanowiskoId,
[�rednia],[Liczba wa�nych pom#],[Kompletno��],Min,Maks
from ['BaP(PM10)$'] Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletno��]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) is not null
order by Rok

Insert Into [Jako�� Powietrza](Rok,StanowiskoId,�rednia,[Liczba Pomiar�w],Kompletno��,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) as StanowiskoId,
[�rednia],[Liczba pomiar�w],[Kompletno��],Min,Maks
from C6H6$ Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletno��]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) is not null
order by Rok

Insert Into [Jako�� Powietrza](Rok,StanowiskoId,�rednia,[Liczba Pomiar�w],Kompletno��,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) as StanowiskoId,
[�rednia],[Liczba wa�nych pom#],[Kompletno��],Min,Maks
from ['Cd(PM10)$'] Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletno��]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) is not null
order by Rok

Insert Into [Jako�� Powietrza](Rok,StanowiskoId,�rednia,[Liczba Pomiar�w],Kompletno��,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) as StanowiskoId,
[�rednia],[Liczba pomiar�w],[Kompletno��],Min,Maks
from CO$ Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletno��]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) is not null
order by Rok

Insert Into [Jako�� Powietrza](Rok,StanowiskoId,�rednia,[Liczba Pomiar�w],Kompletno��,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) as StanowiskoId,
[�rednia],[Liczba wa�nych pom#],[Kompletno��],Min,Maks
from ['Ni(PM10)$'] Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletno��]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) is not null
order by Rok

Insert Into [Jako�� Powietrza](Rok,StanowiskoId,�rednia,[Liczba Pomiar�w],Kompletno��,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) as StanowiskoId,
[�rednia],[Liczba pomiar�w],[Kompletno��],Min,Maks
from NO2$ Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletno��]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) is not null
order by Rok

Insert Into [Jako�� Powietrza](Rok,StanowiskoId,�rednia,[Liczba Pomiar�w],Kompletno��,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) as StanowiskoId,
[�rednia],[Liczba pomiar�w],[Kompletno��],Min,Maks
from NOx$ Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletno��]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) is not null
order by Rok

Insert Into [Jako�� Powietrza](Rok,StanowiskoId,�rednia,[Liczba Pomiar�w],Kompletno��,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) as StanowiskoId,
[�rednia],[Liczba pomiar�w],[Kompletno��],Min,Max
from O3$ Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletno��]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) is not null
order by Rok

Insert Into [Jako�� Powietrza](Rok,StanowiskoId,�rednia,[Liczba Pomiar�w],Kompletno��,Minimum,Maksimum)
Select Rok,
(Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) as StanowiskoId,
[�rednia],[Liczba pomiar�w],[Kompletno��],Min,Maks
from SO2$ Wsk
where Wsk.Rok>= 2002 and Wsk.[Kompletno��]>=75 and (Select Id from Stanowisko where StacjaId=(Select Id from Stacja where [Kod Stacji]=Wsk.[Kod stacji]) and Wska�nikId=(Select Id from Wska�nik where [Wska�nik Kod]=Wsk.[Wska�nik]) and [�redni CzasId]=(Select Id from [�redni Czas] where [�redni Czas Kod]=[Czas u�redniania])) is not null
order by Rok
