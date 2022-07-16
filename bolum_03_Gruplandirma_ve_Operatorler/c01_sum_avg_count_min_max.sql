-- Count()
---------------

Select Count(*) from Ogrenciler

-- Baþlýk eklemek için "as"
Select Count(*) as 'Toplam Kayýt' from Ogrenciler


-- Ankaradaki toplam kiþi sayýsý
Select Count(*) as 'Toplam Kiþi' from Ogrenciler where OGRSEHIR =  'Ankara'


-- Sum()
----------------

--  sýnav notlarýnýn toplamý
select sum(SINAV1), sum(SINAV2), sum(SINAV3) from Notlar  


-- Avg()
----------------

--  sýnav notlarýnýn ortalamasý
select avg(SINAV1), avg(SINAV2), avg(SINAV3) from Notlar  

-- Max()
----------------

--  sýnav notlarýnýn en büyüðü
select max(SINAV1), max(SINAV2), max(SINAV3) from Notlar  

 -- Min()
----------------

--  sýnav notlarýnýn en küçüðü
select min(SINAV1), min(SINAV2), min(SINAV3) from Notlar  

 