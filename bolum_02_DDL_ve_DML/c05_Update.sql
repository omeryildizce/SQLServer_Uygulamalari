-- Update
-----------------------
use OgreciNot

select * from Ogrenciler

-- b�t�n ��renci kul�plerini bili�im yapar
---- update Ogrenciler set OGRKULUP = 'Bili�im'

update Ogrenciler set OGRKULUP = 'Bili�im' where OGRID = 1
--update Ogrenciler set OGRKULUP = 'Kitap' where OGRID % 2 = 0
--update Ogrenciler set OGRKULUP = 'Satran�' where OGRID % 3 = 0 
--update Ogrenciler set OGRKULUP = 'Satran�' where OGRID % 4 = 0 
--update Ogrenciler set OGRKULUP = 'Gezi' where OGRID % 5 = 0 
select * from Ogrenciler
 

select * from Notlar
update Notlar set Ortalama= (SINAV1+ SINAV2 + SINAV3) / 3
select * from Notlar
update Notlar set DURUM = 1 where ORTALAMA > 59
update Notlar set DURUM = 0 where ORTALAMA <= 59

select * from Notlar
