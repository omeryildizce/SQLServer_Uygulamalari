-- drop
create procedure deneme as 
select * from Urunler where UrunStok > 10


execute deneme

drop proc deneme


-- alter

USE [Satis]
GO
/****** Object:  StoredProcedure [dbo].[hareketler]    Script Date: 16.07.2022 18:50:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER procedure [dbo].[hareketler] as
select HareketId,PersonelAdSoyad,LEFT(  MusteriAd, 1) + '.' + MusteriSoyad as 'Müþteri',UrunAd,
Adet, Tutar, Tarih from Hareket 
inner join Urunler
on Urunler.UrunId = Hareket.Urun
inner join Musteri
on Hareket.Musteri = Musteri.MusteriId
inner join Personel
on Hareket.Personel = Personel.PersonelId

execute hareketler

