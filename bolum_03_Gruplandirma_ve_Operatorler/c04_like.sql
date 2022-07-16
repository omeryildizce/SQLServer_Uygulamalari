-- like
----------------

select * from Ogrenciler where OGRAD like 'ali'

select * from Ogrenciler where OGRAD like 'a%'

select * from Ogrenciler where OGRAD like '%a'

select * from Ogrenciler where OGRAD like '%a%'

select * from Ogrenciler where OGRAD like 'a%' or ograd like '%r'

select * from Ogrenciler where OGRAD like '%e%' and OGRCINSIYET = 'kadýn'

select * from Ogrenciler where OGRAD not like '%a%'
