--4.1

SELECT *,cast([Współrzędne Północ] as decimal (10,1)) as Północ, cast([Współrzędne Wschód]as decimal (10,1)) as Wschód
FROM [Jakość Powietrza] JP
JOIN Stanowisko stan on stan.Id=JP.StanowiskoId
JOIN Stacja stac on stac.Id=stan.StacjaId
Where [Współrzędne Północ]>0 and [Współrzędne Wschód]>0

SELECT [Rok],Województwo,AVG([Kompletność]) as 'Kompletność'
FROM [Jakość Powietrza] JP
JOIN Stanowisko Stan on Stan.id=JP.StanowiskoId
Join Stacja Stac on Stac.Id=Stan.StacjaId
JOIN Województwo W on W.Id=Stac.WojewództwoId
GROUP BY [Rok],Województwo
ORDER BY [Rok],Województwo

SELECT [Rok],Województwo,AVG([Liczba Pomiarów]) as 'Liczba Pomiarów'
FROM [Jakość Powietrza] JP
JOIN Stanowisko Stan on Stan.id=JP.StanowiskoId
Join Stacja Stac on Stac.Id=Stan.StacjaId
JOIN Województwo W on W.Id=Stac.WojewództwoId
GROUP BY [Rok],Województwo
ORDER BY [Rok],Województwo

--4.2

SELECT 
    [Rok],
    AVG(Średnia) AS Wartość,
    'Przeciętna wartość średniorocznych wartości dla średnich wartości odczytów' AS Opis,
    I.[Wskaźnik Kod] as Wskaźnik
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod] = 'SO₂'
GROUP BY [Rok],I.[Wskaźnik Kod]

UNION ALL

SELECT 
    [Rok],
    AVG([Minimum]) AS Wartość,
    'Przeciętna wartość średniorocznych wartości dla minimalnych wartości odczytów' AS Opis,
    I.[Wskaźnik Kod] as Wskaźnik
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod] = 'SO₂'
GROUP BY [Rok],I.[Wskaźnik Kod]

UNION ALL

SELECT 
    [Rok],
    AVG([Maksimum]) AS Wartość,
    'Przeciętna wartość średniorocznych wartości dla maksymalnych wartości odczytów' AS Opis,
    I.[Wskaźnik Kod] as Wskaźnik
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod] = 'SO₂'
GROUP BY [Rok],I.[Wskaźnik Kod]

UNION ALL

SELECT 
    [Rok],
     CASE 
        WHEN I.[Wskaźnik Kod] = 'As(PM10)' THEN CASE WHEN [Rok] < 2005 THEN 0 ELSE 6 END
        WHEN I.[Wskaźnik Kod] = 'BaP(PM10)' THEN CASE WHEN [Rok] < 2010 THEN 0 ELSE 1 END
        WHEN I.[Wskaźnik Kod] = 'C6H6' THEN CASE WHEN [Rok] < 2000 THEN 0 ELSE 5 END
        WHEN I.[Wskaźnik Kod] = 'Cd(PM10)' THEN CASE WHEN [Rok] < 2005 THEN 0 ELSE 5 END
        WHEN I.[Wskaźnik Kod] = 'CO' THEN CASE WHEN [Rok] < 2005 THEN 0 ELSE 10 END
        WHEN I.[Wskaźnik Kod] = 'Ni(PM10)' THEN CASE WHEN [Rok] < 2005 THEN 0 ELSE 20 END
        WHEN I.[Wskaźnik Kod] = 'NO2' THEN CASE WHEN [Rok] < 2010 THEN 0 ELSE 40 END
        WHEN I.[Wskaźnik Kod] = 'NOx' THEN CASE WHEN [Rok] < 2005 THEN 0 ELSE 40 END
        WHEN I.[Wskaźnik Kod] = 'O3' THEN CASE WHEN [Rok] < 2005 THEN 0 ELSE 120 END
        WHEN I.[Wskaźnik Kod] = 'SO₂' THEN CASE WHEN [Rok] < 2005 THEN 0 ELSE 20 END
    ELSE NULL END AS Wartość,
    'Norma Europejska' AS Opis,
    I.[Wskaźnik Kod] as Wskaźnik
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod] = 'SO₂'
GROUP BY [Rok],I.[Wskaźnik Kod]

ORDER BY [Rok], Wartość;

--4.3

SELECT PR.Województwo,
AVG(Średnia) AS Wartość,
'Przeciętna wartość średniorocznych wartości dla średnich wartości odczytów' as Opis
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Województwo PR on PR.Id=S.WojewództwoId
Where I.[Wskaźnik Kod]='SO2'
GROUP BY PR.Województwo

Union All

SELECT PR.Województwo,
AVG([Minimum])  AS Wartość,
'Przeciętna wartość średniorocznych wartości dla minimalnych wartości odczytów' as Opis
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Województwo PR on PR.Id=S.WojewództwoId
Where I.[Wskaźnik Kod]='SO2'
GROUP BY PR.Województwo

Union All

SELECT PR.Województwo,
AVG([Maksimum]) AS Wartość,
'Przeciętna wartość średniorocznych wartości dla maksymalnych wartości odczytów' as Opis
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Województwo PR on PR.Id=S.WojewództwoId
Where I.[Wskaźnik Kod]='SO2'
GROUP BY PR.Województwo

ORDER BY PR.Województwo

--4.4
SELECT PR.Województwo,
COUNT([Typ Stacji]) AS Wartość,
[Typ Stacji] as 'Typ Stacji'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Województwo PR on PR.Id=S.WojewództwoId
JOIN [Typ Stacji] ST on ST.Id=S.[Typ StacjiId]
JOIN [Typ Obszaru] AT on AT.Id=S.[Typ ObszaruId]
JOIN [Rodzaj Stacji] SK on SK.Id=S.[Rodzaj StacjiId]
GROUP BY PR.Województwo,[Typ Stacji]
ORDER BY COUNT([Typ Stacji])DESC,PR.Województwo,[Typ Stacji]

------------------------------------------------------------
SELECT PR.Województwo,
COUNT([Typ Obszaru]) AS Wartość,
[Typ Obszaru] as 'Typ Obszaru'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Województwo PR on PR.Id=S.WojewództwoId
JOIN [Typ Stacji] ST on ST.Id=S.[Typ StacjiId]
JOIN [Typ Obszaru] AT on AT.Id=S.[Typ ObszaruId]
JOIN [Rodzaj Stacji] SK on SK.Id=S.[Rodzaj StacjiId]
GROUP BY PR.Województwo,[Typ Obszaru]
ORDER BY COUNT([Typ Obszaru])DESC,PR.Województwo,[Typ Obszaru]
------------------------------------------------------------
SELECT PR.Województwo,
COUNT([Rodzaj Stacji]) AS Wartość,
[Rodzaj Stacji] as 'Rodzaj Stacji'
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
JOIN Stacja S ON S.Id=P.StacjaId
JOIN Województwo PR on PR.Id=S.WojewództwoId
JOIN [Typ Stacji] ST on ST.Id=S.[Typ StacjiId]
JOIN [Typ Obszaru] AT on AT.Id=S.[Typ ObszaruId]
JOIN [Rodzaj Stacji] SK on SK.Id=S.[Rodzaj StacjiId]
GROUP BY PR.Województwo,[Rodzaj Stacji]
ORDER BY COUNT([Rodzaj Stacji])DESC,PR.Województwo,[Rodzaj Stacji]

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
ORDER BY COUNT([Rodzaj Stacji])DESC,PR.Wojewódźtwo,[Rodzaj Stacji]

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
ORDER BY COUNT([Rodzaj Stacji])DESC,PR.Wojewódźtwo,[Rodzaj Stacji]

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
ORDER BY COUNT([Rodzaj Stacji])DESC,PR.Wojewódźtwo,[Rodzaj Stacji]

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
ORDER BY COUNT([Rodzaj Stacji])DESC,PR.Wojewódźtwo,[Rodzaj Stacji]

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
ORDER BY COUNT([Rodzaj Stacji])DESC,PR.Wojewódźtwo,[Rodzaj Stacji]
------------------------------------------------------------   


SELECT 
    [Rok],
    AVG(Średnia) AS Wartość,
    'Przeciętna wartość średniorocznych wartości dla średnich wartości odczytów' AS Opis,
    I.[Wskaźnik Kod] as Wskaźnik
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod] = 'O3'
GROUP BY [Rok],I.[Wskaźnik Kod]

UNION ALL

SELECT 
    [Rok],
    AVG([Minimum]) AS Wartość,
    'Przeciętna wartość średniorocznych wartości dla minimalnych wartości odczytów' AS Opis,
    I.[Wskaźnik Kod] as Wskaźnik
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod] = 'O3'
GROUP BY [Rok],I.[Wskaźnik Kod]

UNION ALL

SELECT 
    [Rok],
    AVG([Maksimum]) AS Wartość,
    'Przeciętna wartość średniorocznych wartości dla maksymalnych wartości odczytów' AS Opis,
    I.[Wskaźnik Kod] as Wskaźnik
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod] = 'O3'
GROUP BY [Rok],I.[Wskaźnik Kod]

UNION ALL

SELECT 
    [Rok],
     CASE 
        WHEN I.[Wskaźnik Kod] = 'As(PM10)' THEN CASE WHEN [Rok] < 2005 THEN 0 ELSE 6 END
        WHEN I.[Wskaźnik Kod] = 'BaP(PM10)' THEN CASE WHEN [Rok] < 2010 THEN 0 ELSE 1 END
        WHEN I.[Wskaźnik Kod] = 'C6H6' THEN CASE WHEN [Rok] < 2000 THEN 0 ELSE 5 END
        WHEN I.[Wskaźnik Kod] = 'Cd(PM10)' THEN CASE WHEN [Rok] < 2005 THEN 0 ELSE 5 END
        WHEN I.[Wskaźnik Kod] = 'CO' THEN CASE WHEN [Rok] < 2005 THEN 0 ELSE 10 END
        WHEN I.[Wskaźnik Kod] = 'Ni(PM10)' THEN CASE WHEN [Rok] < 2005 THEN 0 ELSE 20 END
        WHEN I.[Wskaźnik Kod] = 'NO2' THEN CASE WHEN [Rok] < 2010 THEN 0 ELSE 40 END
        WHEN I.[Wskaźnik Kod] = 'NOx' THEN CASE WHEN [Rok] < 2005 THEN 0 ELSE 40 END
        WHEN I.[Wskaźnik Kod] = 'O3' THEN CASE WHEN [Rok] < 2005 THEN 0 ELSE 120 END
    ELSE NULL END AS Wartość,
    'Norma Europejska' AS Opis,
    I.[Wskaźnik Kod] as Wskaźnik
FROM [Jakość Powietrza] JP
JOIN Stanowisko P ON JP.StanowiskoId = P.Id
JOIN Wskaźnik I ON P.WskaźnikId = I.Id
Where I.[Wskaźnik Kod] = 'O3'
GROUP BY [Rok],I.[Wskaźnik Kod]

ORDER BY [Rok], Wartość;
