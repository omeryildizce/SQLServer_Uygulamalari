select 20 as 'Say� 1', 4 as 'Say� 2', 20+4 as 'Toplam', 20-4 as 'Fark', 20 * 4 as '�arp�m', 20 / 4 as 'Bolum', 20 % 4 as 'Mod'

 
select abs(-85) as 'Mutlak De�er'
select POWER(10,2) as '�s alma'
select * , POWER(ORTALAMA, 2) as 'US', SQRT(POWER(ortalama,2))  from Notlar
select FLOOR(4.86)
select CEILING(4.86)

select sum(SINAV1) from Notlar
select sum(SINAV1) from Notlar where OGRENCI= 1
select SINAV1, DERS from Notlar where OGRENCI=1

select DERSAD, SINAV1 from Notlar
inner join Dersler
on Notlar.DERS=Dersler.DERSID
where OGRENCI = (select top 1 OGRID from Ogrenciler where   OGRAD = 'Ali')

