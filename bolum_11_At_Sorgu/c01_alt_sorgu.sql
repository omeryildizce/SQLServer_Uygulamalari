select * from Musteri

select UrunAd, COUNT(*) as 'Ürün Adedi' from Hareket 
inner join Urunler
on Hareket.Urun = Urunler.UrunId
group by UrunAd 
order by count(*) desc


select * from hareket 
where Urun in 
(
	select UrunId from Urunler
	where Kategori = 1
)