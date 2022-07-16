-- full join
--------------------------
select * from Notlar 
full join Ogrenciler
on Ogrenciler.OGRID = Notlar.OGRENCI

-- union join
--------------------------
select * from Kulupler union
select * from Dersler
 