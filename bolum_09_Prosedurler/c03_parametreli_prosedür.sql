create procedure urungetir as
select UrunAd,UrunStok,UrunMarka  from Urunler


exec urungetir


alter procedure urungetir 
@deger varchar (50) = 'Buzdolabý'
as
select UrunAd,UrunStok,UrunMarka  from Urunler
where UrunAd = @deger

exec urungetir

exec urungetir @deger = 'Laptop'
 


 create procedure urunstockadedi 
 @stok int = 0
 as
select UrunAd,UrunStok,UrunMarka  from Urunler
where UrunStok  > @stok

execute urunstockadedi 20
execute urunstockadedi @stok = 13