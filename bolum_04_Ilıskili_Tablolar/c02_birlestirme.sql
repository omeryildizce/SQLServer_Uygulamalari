-- join
------------------

select NOTID,OGRAD +' '+ OGRSOYAD as 'Ad Soyad',OGRSEHIR, DERSAD, SINAV1, SINAV2, SINAV3, ORTALAMA, DURUM from Notlar
inner join Dersler
on Notlar.DERS = Dersler.DERSID  
inner join Ogrenciler
on Notlar.OGRENCI = Ogrenciler.OGRID 
 