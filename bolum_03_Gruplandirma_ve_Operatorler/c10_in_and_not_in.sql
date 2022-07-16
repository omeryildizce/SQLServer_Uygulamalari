-- in and not in
----------------------

select * from Ogrenciler where OGRSEHIR in('ankara', 'izmir', 'istanbul')

select * from Ogrenciler where OGRSEHIR not in('ankara', 'izmir', 'istanbul')