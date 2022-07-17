use Satis

select * from Musteri

declare @bakiye int
set @bakiye = (
	select max(MusteriBakiye) from Musteri
)

select @bakiye


	declare @stok int
	set @stok = 
	(
		select max(UrunStok) from Urunler
	)

	select * from Urunler where UrunStok = @stok

