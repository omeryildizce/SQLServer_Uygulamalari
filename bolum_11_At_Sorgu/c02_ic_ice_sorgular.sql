select * from Hareket 
where Musteri = 
(
	select MusteriId from Musteri
	where MusteriSehir = 'Ankara'
)

select * from hareket 
where Urun in 
(
	select UrunId from Urunler
	where Kategori =
	(
		select KategoriId from Kategori 
		where KategoriAd = 'Beyaz Eþya'
	)
)

select sum(Tutar) from Hareket
where Musteri in 
(
	select MusteriId from Musteri
	where MusteriSehir = 'Ankara'
)

Declare @sayi int = 1

update Urunler set UrunStok -= 
(
	select sum(Adet) from Hareket
	where Urun = @sayi
)
where UrunId = @sayi


update Urunler set UrunStok -= 
(
	select sum(Adet) from Hareket
	where Urun = 3
)
where UrunId =3

update Urunler set UrunStok -= 
(
	select sum(Adet) from Hareket
	where Urun = 4
)
where UrunId =4