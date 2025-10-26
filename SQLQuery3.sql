-- SELECT column_names FROM table_name
-- WHERE condition GROUP BY grouping_column_name HAVING condition ORDER BY column_names
--SELECT unvan, COUNT(*) FROM Personel GROUP BY unvan ;

--SELECT unvan, AVG(maas) as ORT_MAAS FROM Personel GROUP BY unvan

--SELECT unvan, MAX (maas) as ENYUKSEK_MAAS,
--MIN(maas) as ENAZ_MAAS
--FROM Personel
--GROUP BY unvan
--SELECT unvan, MAX(maas) as ENYUKSEK_MAAS,
--MIN(maas) as ENAZ_MAAS
--FROM Personel GROUP BY unvan ORDER BY unvan DESC

--SELECT birim, SUM(maas) AS 'Toplam Maas',
--AVG(maas) AS 'Ortalama Maas' 
--FROM personel GROUP BY birim 
--ORDER BY BÝRÝM

--SELECT birim, COUNT(*) AS Personel_Sayýsý 
--FROM personel 
--WHERE maas>=3000 GROUP BY birim
--ORDER BY Personel_Sayýsý DESC

--SELECT birim, unvan, MAX(maas) as ENYUKSEK_MAAS,
--MIN(maas) as ENDUSUK_MAAS FROM personel
--GROUP BY birim, unvan
--ORDER BY birim

--SELECT birim, cinsiyet, COUNT(*) AS 'Personel Sayýsý'
--FROM personel
--GROUP BY birim, cinsiyet
--ORDER BY birim, cinsiyet

--SELECT birim, count(*) as personel_sayýsý
--from personel 
--group by birim 

--select birim, count(*) as personel_sayýsý
--from personel group by birim
--having count(*) >10

--SELECT ProductID, SUM(Quantity) as TOTAL FROM [Order Details]
--GROUP BY ProductID order by ProductID

--SELECT OrderID, SUM (Quantity * UnitPrice) as TOTAL_PRÝCE FROM [Order Details]
--GROUP BY OrderID order by OrderID

--SELECT CategoryID, COUNT(ProductID) FROM Products GROUP BY CategoryID

--SELECT ProductID, SUM(Quantity) AS Sales_Quantity FROM [Order Details] GROUP BY ProductID HAVING SUM(Quantity)>1000