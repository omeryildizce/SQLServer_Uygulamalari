-- like
------------------

select * from Ogrenciler where OGRSEHIR like '%_ra%'
select * from Ogrenciler where OGRSEHIR like '%ra_%'
select * from Ogrenciler where OGRSEHIR like '%r_a%'
select * from Ogrenciler where OGRSEHIR like '%a_a%'

select * from Ogrenciler where OGRAD like '%[A, B]%'
select * from Ogrenciler where OGRAD like '%[A, B]'
select * from Ogrenciler where OGRAD like '[A, B]%'

select * from Ogrenciler where OGRAD like '[b-f]%'

