-- having
-----------------------

select OGRSEHIR, COUNT(*) as '�ehir Say�s�' from Ogrenciler
group by OGRSEHIR
having count(*) >= 2

select OGRKULUP ,count(*) as 'Say�' from Ogrenciler
group by OGRKULUP
having OGRKULUP = 'Bili�im'


select 'Ge�ti' as 'Durum', count(*) as 'Say�' from Notlar 
group by Durum 
having DURUM = 1 

