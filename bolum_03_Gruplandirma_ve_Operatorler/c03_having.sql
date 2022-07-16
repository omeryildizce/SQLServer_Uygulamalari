-- having
-----------------------

select OGRSEHIR, COUNT(*) as 'Þehir Sayýsý' from Ogrenciler
group by OGRSEHIR
having count(*) >= 2

select OGRKULUP ,count(*) as 'Sayý' from Ogrenciler
group by OGRKULUP
having OGRKULUP = 'Biliþim'


select 'Geçti' as 'Durum', count(*) as 'Sayý' from Notlar 
group by Durum 
having DURUM = 1 

