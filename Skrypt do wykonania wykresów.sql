--4.1
SELECT [Rok],
AVG(Średnia) AS 'Średnia średnia wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId= P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='As(PM10)'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

SELECT [Rok],
AVG([Minimum]) as 'Średnia minimalna wartość roczna dla całej Polski' ,
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='As(PM10)'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

SELECT [Rok],
AVG([Maksimum]) as 'Średnia maksymalna wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='As(PM10)'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]
------------------------------------------------------------
SELECT [Rok],
AVG(Średnia) AS 'Średnia średnia wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='BaP(PM10)'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

SELECT [Rok],
AVG([Minimum]) as 'Średnia minimalna wartość roczna dla całej Polski' ,
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='BaP(PM10)'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

SELECT [Rok],
AVG([Maksimum]) as 'Średnia maksymalna wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='BaP(PM10)'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]
------------------------------------------------------------
SELECT [Rok],
AVG(Średnia) AS 'Średnia średnia wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='C6H6'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

SELECT [Rok],
AVG([Minimum]) as 'Średnia minimalna wartość roczna dla całej Polski' ,
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='C6H6'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

SELECT [Rok],
AVG([Maksimum]) as 'Średnia maksymalna wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='C6H6'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]
------------------------------------------------------------
SELECT [Rok],
AVG(Średnia) AS 'Średnia średnia wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='Cd(PM10)'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

SELECT [Rok],
AVG([Minimum]) as 'Średnia minimalna wartość roczna dla całej Polski' ,
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='Cd(PM10)'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

SELECT [Rok],
AVG([Maksimum]) as 'Średnia maksymalna wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='Cd(PM10)'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]
------------------------------------------------------------
SELECT [Rok],
AVG(Średnia) AS 'Średnia średnia wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='CO'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

SELECT [Rok],
AVG([Minimum]) as 'Średnia minimalna wartość roczna dla całej Polski' ,
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='CO'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

SELECT [Rok],
AVG([Maksimum]) as 'Średnia maksymalna wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='CO'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]
------------------------------------------------------------
SELECT [Rok],
AVG(Średnia) AS 'Średnia średnia wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='Ni(PM10)'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

SELECT [Rok],
AVG([Minimum]) as 'Średnia minimalna wartość roczna dla całej Polski' ,
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='Ni(PM10)'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

SELECT [Rok],
AVG([Maksimum]) as 'Średnia maksymalna wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='Ni(PM10)'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]
------------------------------------------------------------
SELECT [Rok],
AVG(Średnia) AS 'Średnia średnia wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='NO2'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

SELECT [Rok],
AVG([Minimum]) as 'Średnia minimalna wartość roczna dla całej Polski' ,
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='NO2'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

SELECT [Rok],
AVG([Maksimum]) as 'Średnia maksymalna wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='NO2'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]
------------------------------------------------------------
SELECT [Rok],
AVG(Średnia) AS 'Średnia średnia wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='NOx'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

SELECT [Rok],
AVG([Minimum]) as 'Średnia minimalna wartość roczna dla całej Polski' ,
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='NOx'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

SELECT [Rok],
AVG([Maksimum]) as 'Średnia maksymalna wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='NOx'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]
------------------------------------------------------------
SELECT [Rok],
AVG(Średnia) AS 'Średnia średnia wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='O3'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

SELECT [Rok],
AVG([Minimum]) as 'Średnia minimalna wartość roczna dla całej Polski' ,
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='O3'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

SELECT [Rok],
AVG([Maksimum]) as 'Średnia maksymalna wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 6 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='O3'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]
------------------------------------------------------------
SELECT [Rok],AVG(Średnia) AS 'Średnia średnia wartość roczna dla całej Polski',AVG([Minimum]) as 'Średnia minimalna wartość roczna dla całej Polski' ,AVG([Maksimum]) as 'Średnia maksymalna wartość roczna dla całej Polski',
CASE WHEN [Rok]<2005 THEN 0 ELSE 20 END AS 'Norma Europejska'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod]='SO2'
GROUP BY [Rok],I.[Wskaźnik Kod]
ORDER BY [Rok]

--4.2

SELECT [Rok],AVG(Kompletność) as Kompletność
FROM [Jakość Powietrza] JP
GROUP BY [Rok]
ORDER BY [Rok]

SELECT [Rok],AVG([Liczba Pomiarów]) as 'Liczba Pomiarów'
FROM [Jakość Powietrza] JP
GROUP BY [Rok]
ORDER BY [Rok]

--4.3

SELECT PR.Wojewódźtwo,AVG(Średnia) AS 'Średnia średnia wartość roczna dla całej Polski',AVG([Minimum]) as 'Średnia minimalna wartość roczna dla całej Polski' ,AVG([Maksimum]) as 'Średnia maksymalna wartość roczna dla całej Polski'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Wojewódźtwo PR on PR.Id=S.WojewódźtwoId
Where I.[Wskaźnik Kod]='CO'
GROUP BY PR.Wojewódźtwo
ORDER BY PR.Wojewódźtwo

SELECT PR.Wojewódźtwo,AVG(Średnia) AS 'Średnia średnia wartość roczna dla całej Polski',AVG([Minimum]) as 'Średnia minimalna wartość roczna dla całej Polski' ,AVG([Maksimum]) as 'Średnia maksymalna wartość roczna dla całej Polski'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Wojewódźtwo PR on PR.Id=S.WojewódźtwoId
Where I.[Wskaźnik Kod]='NO2'
GROUP BY PR.Wojewódźtwo
ORDER BY PR.Wojewódźtwo

SELECT PR.Wojewódźtwo,AVG(Średnia) AS 'Średnia średnia wartość roczna dla całej Polski',AVG([Minimum]) as 'Średnia minimalna wartość roczna dla całej Polski' ,AVG([Maksimum]) as 'Średnia maksymalna wartość roczna dla całej Polski'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Wojewódźtwo PR on PR.Id=S.WojewódźtwoId
Where I.[Wskaźnik Kod]='O3'
GROUP BY PR.Wojewódźtwo
ORDER BY PR.Wojewódźtwo

SELECT PR.Wojewódźtwo,AVG(Średnia) AS 'Średnia średnia wartość roczna dla całej Polski',AVG([Minimum]) as 'Średnia minimalna wartość roczna dla całej Polski' ,AVG([Maksimum]) as 'Średnia maksymalna wartość roczna dla całej Polski'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Wojewódźtwo PR on PR.Id=S.WojewódźtwoId
Where I.[Wskaźnik Kod]='SO2'
GROUP BY PR.Wojewódźtwo
ORDER BY PR.Wojewódźtwo

--4.4
SELECT PR.Wojewódźtwo,COUNT([Typ Stacji]) AS tło
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Wojewódźtwo PR on PR.Id=S.WojewódźtwoId
JOIN [Typ Stacji] ST on ST.Id=S.[Typ StacjiId]
JOIN [Typ Obszaru] AT on AT.Id=S.[Typ ObszaruId]
JOIN [Rodzaj Stacji] SK on SK.Id=S.[Rodzaj StacjiId]
Where [Typ Stacji]='tło'
GROUP BY PR.Wojewódźtwo,[Typ Stacji]
ORDER BY PR.Wojewódźtwo,[Typ Stacji]

SELECT PR.Wojewódźtwo,COUNT([Typ Stacji]) AS przemysłowa
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Wojewódźtwo PR on PR.Id=S.WojewódźtwoId
JOIN [Typ Stacji] ST on ST.Id=S.[Typ StacjiId]
JOIN [Typ Obszaru] AT on AT.Id=S.[Typ ObszaruId]
JOIN [Rodzaj Stacji] SK on SK.Id=S.[Rodzaj StacjiId]
Where [Typ Stacji]='przemysłowa'
GROUP BY PR.Wojewódźtwo,[Typ Stacji]
ORDER BY PR.Wojewódźtwo,[Typ Stacji]

SELECT PR.Wojewódźtwo,COUNT([Typ Stacji]) AS komunikacyjna
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Wojewódźtwo PR on PR.Id=S.WojewódźtwoId
JOIN [Typ Stacji] ST on ST.Id=S.[Typ StacjiId]
JOIN [Typ Obszaru] AT on AT.Id=S.[Typ ObszaruId]
JOIN [Rodzaj Stacji] SK on SK.Id=S.[Rodzaj StacjiId]
Where [Typ Stacji]='komunikacyjna'
GROUP BY PR.Wojewódźtwo,[Typ Stacji]
ORDER BY PR.Wojewódźtwo,[Typ Stacji]
------------------------------------------------------------
Select * from [Typ Obszaru]
SELECT PR.Wojewódźtwo,COUNT([Typ Obszaru]) AS miejski
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Wojewódźtwo PR on PR.Id=S.WojewódźtwoId
JOIN [Typ Stacji] ST on ST.Id=S.[Typ StacjiId]
JOIN [Typ Obszaru] AT on AT.Id=S.[Typ ObszaruId]
JOIN [Rodzaj Stacji] SK on SK.Id=S.[Rodzaj StacjiId]
Where [Typ Obszaru]='miejski'
GROUP BY PR.Wojewódźtwo,[Typ Obszaru]
ORDER BY PR.Wojewódźtwo,[Typ Obszaru]

SELECT PR.Wojewódźtwo,COUNT([Typ Obszaru]) AS pozamiejski
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Wojewódźtwo PR on PR.Id=S.WojewódźtwoId
JOIN [Typ Stacji] ST on ST.Id=S.[Typ StacjiId]
JOIN [Typ Obszaru] AT on AT.Id=S.[Typ ObszaruId]
JOIN [Rodzaj Stacji] SK on SK.Id=S.[Rodzaj StacjiId]
Where [Typ Obszaru]='pozamiejski'
GROUP BY PR.Wojewódźtwo,[Typ Obszaru]
ORDER BY PR.Wojewódźtwo,[Typ Obszaru]

SELECT PR.Wojewódźtwo,COUNT([Typ Obszaru]) AS podmiejski
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Wojewódźtwo PR on PR.Id=S.WojewódźtwoId
JOIN [Typ Stacji] ST on ST.Id=S.[Typ StacjiId]
JOIN [Typ Obszaru] AT on AT.Id=S.[Typ ObszaruId]
JOIN [Rodzaj Stacji] SK on SK.Id=S.[Rodzaj StacjiId]
Where [Typ Obszaru]='podmiejski'
GROUP BY PR.Wojewódźtwo,[Typ Obszaru]
ORDER BY PR.Wojewódźtwo,[Typ Obszaru]
------------------------------------------------------------
Select * from [Rodzaj Stacji]
SELECT PR.Wojewódźtwo,COUNT([Rodzaj Stacji]) AS 'wolnostojący pobornik pyłu'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Wojewódźtwo PR on PR.Id=S.WojewódźtwoId
JOIN [Typ Stacji] ST on ST.Id=S.[Typ StacjiId]
JOIN [Typ Obszaru] AT on AT.Id=S.[Typ ObszaruId]
JOIN [Rodzaj Stacji] SK on SK.Id=S.[Rodzaj StacjiId]
Where [Rodzaj Stacji]='wolnostojący pobornik pyłu'
GROUP BY PR.Wojewódźtwo,[Rodzaj Stacji]
ORDER BY PR.Wojewódźtwo,[Rodzaj Stacji]

SELECT PR.Wojewódźtwo,COUNT([Rodzaj Stacji]) AS 'kontenerowa stacjonarna'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Wojewódźtwo PR on PR.Id=S.WojewódźtwoId
JOIN [Typ Stacji] ST on ST.Id=S.[Typ StacjiId]
JOIN [Typ Obszaru] AT on AT.Id=S.[Typ ObszaruId]
JOIN [Rodzaj Stacji] SK on SK.Id=S.[Rodzaj StacjiId]
Where [Rodzaj Stacji]='kontenerowa stacjonarna'
GROUP BY PR.Wojewódźtwo,[Rodzaj Stacji]
ORDER BY PR.Wojewódźtwo,[Rodzaj Stacji]

SELECT PR.Wojewódźtwo,COUNT([Rodzaj Stacji]) AS 'pasywna'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Wojewódźtwo PR on PR.Id=S.WojewódźtwoId
JOIN [Typ Stacji] ST on ST.Id=S.[Typ StacjiId]
JOIN [Typ Obszaru] AT on AT.Id=S.[Typ ObszaruId]
JOIN [Rodzaj Stacji] SK on SK.Id=S.[Rodzaj StacjiId]
Where [Rodzaj Stacji]='pasywna'
GROUP BY PR.Wojewódźtwo,[Rodzaj Stacji]
ORDER BY PR.Wojewódźtwo,[Rodzaj Stacji]

SELECT PR.Wojewódźtwo,COUNT([Rodzaj Stacji]) AS 'mobilna'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Wojewódźtwo PR on PR.Id=S.WojewódźtwoId
JOIN [Typ Stacji] ST on ST.Id=S.[Typ StacjiId]
JOIN [Typ Obszaru] AT on AT.Id=S.[Typ ObszaruId]
JOIN [Rodzaj Stacji] SK on SK.Id=S.[Rodzaj StacjiId]
Where [Rodzaj Stacji]='mobilna'
GROUP BY PR.Wojewódźtwo,[Rodzaj Stacji]
ORDER BY PR.Wojewódźtwo,[Rodzaj Stacji]

SELECT PR.Wojewódźtwo,COUNT([Rodzaj Stacji]) AS 'w budynku'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Wojewódźtwo PR on PR.Id=S.WojewódźtwoId
JOIN [Typ Stacji] ST on ST.Id=S.[Typ StacjiId]
JOIN [Typ Obszaru] AT on AT.Id=S.[Typ ObszaruId]
JOIN [Rodzaj Stacji] SK on SK.Id=S.[Rodzaj StacjiId]
Where [Rodzaj Stacji]='w budynku'
GROUP BY PR.Wojewódźtwo,[Rodzaj Stacji]
ORDER BY PR.Wojewódźtwo,[Rodzaj Stacji]

SELECT PR.Wojewódźtwo,COUNT([Rodzaj Stacji]) AS 'rozproszona'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Wojewódźtwo PR on PR.Id=S.WojewódźtwoId
JOIN [Typ Stacji] ST on ST.Id=S.[Typ StacjiId]
JOIN [Typ Obszaru] AT on AT.Id=S.[Typ ObszaruId]
JOIN [Rodzaj Stacji] SK on SK.Id=S.[Rodzaj StacjiId]
Where [Rodzaj Stacji]='rozproszona'
GROUP BY PR.Wojewódźtwo,[Rodzaj Stacji]
ORDER BY PR.Wojewódźtwo,[Rodzaj Stacji]
------------------------------------------------------------   