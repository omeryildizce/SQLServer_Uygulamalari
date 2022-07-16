
create procedure hareketler as
select HareketId,PersonelAdSoyad, MusteriAd + ' ' + MusteriSoyad as 'Müþteri',UrunAd,
Adet, Tutar, Tarih from Hareket 
inner join Urunler
on Urunler.UrunId = Hareket.Urun
inner join Musteri
on Hareket.Musteri = Musteri.MusteriId
inner join Personel
on Hareket.Personel = Personel.PersonelId



execute hareketler