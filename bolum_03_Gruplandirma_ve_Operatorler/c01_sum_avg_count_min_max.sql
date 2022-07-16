-- Count()
---------------

Select Count(*) from Ogrenciler

-- Ba�l�k eklemek i�in "as"
Select Count(*) as 'Toplam Kay�t' from Ogrenciler


-- Ankaradaki toplam ki�i say�s�
Select Count(*) as 'Toplam Ki�i' from Ogrenciler where OGRSEHIR =  'Ankara'


-- Sum()
----------------

--  s�nav notlar�n�n toplam�
select sum(SINAV1), sum(SINAV2), sum(SINAV3) from Notlar  


-- Avg()
----------------

--  s�nav notlar�n�n ortalamas�
select avg(SINAV1), avg(SINAV2), avg(SINAV3) from Notlar  

-- Max()
----------------

--  s�nav notlar�n�n en b�y���
select max(SINAV1), max(SINAV2), max(SINAV3) from Notlar  

 -- Min()
----------------

--  s�nav notlar�n�n en k�����
select min(SINAV1), min(SINAV2), min(SINAV3) from Notlar  

 