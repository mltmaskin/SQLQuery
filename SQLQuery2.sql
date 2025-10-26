--SELECT * FROM Employees e WHERE e.FirstName like '%ert';
--SELECT * FROM Employees e WHERE e.FirstName like 'j%t';
--SELECT * FROM Employees e WHERE e.FirstName like'n%an%';
--SELECT * FROM Employees e ORDER BY e.BirthDate DESC ; 
--SELECT distinct (city) FROM Employees;
--SELECT TOP 5 FirstName , LastName FROM EMPLOYEES;
--SELECT * FROM Employees WHERE Region is null;
--SELECT * FROM Employees WHERE Region is not null;

--Mathematical Functions 

--SELECT MAX(maas) as MAX_MAAS FROM Personel ;
--SELECT MIN(maas) as MIN_MAAS FROM Personel ;
--SELECT SUM(maas) as TOPLAM_MAAS FROM Personel ;
--SELECT AVG (maas) as ORTALAMA_MAAS FROM Personel ;
--SELECT COUNT (*) FROM Personel ; neden yýldýz parantez içinde olmalý ??
--SELECT COUNT (*) as KADIN_PERSONEL_SAYISI FROM Personel WHERE cinsiyet = 'K';
--SELECT COUNT (*) as PERSONEL_SAYISI FROM Personel WHERE ise_baslama_tarihi between '2000.01.01' and '2005.12.31'
--SELECT COUNT(*) as ERKEK_PERSONEL_SAYISI FROM Personel WHERE maas > 3500 and cinsiyet = 'E'
--SELECT COUNT(*) as 'Personel Sayýsý', SUM(maas) as 'Toplam Maaþ', AVG(maas) as 'Ortalama Maaþ' FROM Personel;
--SELECT MAX(maas) as 'En Yüksek Maaþ',
--MIN(maas) as 'En Düþük Maaþ',
--AVG(maas) as 'Ortalama Maaþ' FROM Personel WHERE maas>=2000 and cinsiyet = 'K';

--Some Commonly Used Functions For Numeric Values in SQL

--SELECT ABS(-1.25)
--SELECT FLOOR(24.9)
--SELECT CEILING(24.1)
--SELECT ROUND(12.56478,3)
--SELECT POWER(5,3)
--SELECT SQRT(25)
--SELECT ROUND(SQRT(40),3)

--Character Set Functions in SQL

--SELECT CONCAT(FirstName, ' ', LastName) as FullName FROM Employees;
--SELECT SUBSTRING(p_ad,3,5) from personel 
--SELECT LEFT(p_ad,2) from personel
--SELECT Lower(p_ad) from personel 
--SELECT len(p_ad) as UZUNLUK from personel 
--SELECT p_ad, REPLACE (p_ad, 'SERKAN', 'AHMET') as ARA FROM PERSONEL
--SELECT p_ad, CHARINDEX ('E',p_ad) as ARA from personel
--SELECT p_ad, REVERSE(p_ad) as TERS from personel 