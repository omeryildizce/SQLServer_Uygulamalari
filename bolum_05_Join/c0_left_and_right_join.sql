-- left join
--------------------------
select * from Ogrenciler 
left join Notlar
on Ogrenciler.OGRID = Notlar.OGRENCI

-- right join
--------------------------
select * from Notlar 
right join Ogrenciler
on Ogrenciler.OGRID = Notlar.OGRENCI