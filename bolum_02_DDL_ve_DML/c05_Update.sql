-- Update
-----------------------
use OgreciNot

select * from Ogrenciler

-- bütün öðrenci kulüplerini biliþim yapar
---- update Ogrenciler set OGRKULUP = 'Biliþim'

update Ogrenciler set OGRKULUP = 'Biliþim' where OGRID = 1
--update Ogrenciler set OGRKULUP = 'Kitap' where OGRID % 2 = 0
--update Ogrenciler set OGRKULUP = 'Satranç' where OGRID % 3 = 0 
--update Ogrenciler set OGRKULUP = 'Satranç' where OGRID % 4 = 0 
--update Ogrenciler set OGRKULUP = 'Gezi' where OGRID % 5 = 0 
select * from Ogrenciler
 

select * from Notlar
update Notlar set Ortalama= (SINAV1+ SINAV2 + SINAV3) / 3
select * from Notlar
update Notlar set DURUM = 1 where ORTALAMA > 59
update Notlar set DURUM = 0 where ORTALAMA <= 59

select * from Notlar
