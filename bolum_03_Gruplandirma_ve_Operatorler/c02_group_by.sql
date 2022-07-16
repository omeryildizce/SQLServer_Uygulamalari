--  group by
---------------------

select OGRSEHIR,  count(*) as 'Toplam' from Ogrenciler
group by OGRSEHIR 

select OGRCINSIYET, count(*) as 'Cinsiyet' from Ogrenciler
group by OGRCINSIYET

select OGRKULUP, count(*) as 'Kulüp' from Ogrenciler
group by OGRKULUP

 