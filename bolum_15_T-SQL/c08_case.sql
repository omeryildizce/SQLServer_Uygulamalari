use Satis
select UrunAd, UrunMarka, UruDurum = case UruDurum
when '1' then '�r�n Var'
when '0' then '�r�n Yok'
end
from Urunler


select UrunAd, UrunMarka, Kategori = case Kategori
when '1' then 'Laptop'
when '2' then 'Beyaz E�ya'
when '3' then 'K���k ev Aletleri'


end
from Urunler


select UrunAd, UrunMarka, UrunStok,
UrunStok = case
when UrunStok > 0 and  UrunStok <=5 then 'Kritik Seviye'
when UrunStok > 5 and  UrunStok <=10 then 'Takviye Yap�lmal�' 
when UrunStok > 10  then '�r�n Stok Say�s� Yeterli' 
end
from Urunler

create proc test4
as
select UrunAd, UrunMarka, UrunStok,
UrunStok = case
when UrunStok > 0 and  UrunStok <=5 then 'Kritik Seviye'
when UrunStok > 5 and  UrunStok <=10 then 'Takviye Yap�lmal�' 
when UrunStok > 10  then '�r�n Stok Say�s� Yeterli' 
end
from Urunler


exec test4


