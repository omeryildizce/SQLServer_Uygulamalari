create table Sayac
(
	islem int
)

insert into Sayac
values (0)

select * from Sayac

update sayac set islem = 
(
	select count (*) from Hareket

)

select * from Sayac

create trigger islemartis
on Hareket
after insert 
as 
Update Sayac set islem += 1


USE [Satis]
GO
/****** Object:  Trigger [dbo].[islemartis]    Script Date: 16.07.2022 21:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER trigger [dbo].[islemartis]
on [dbo].[Hareket]
after insert 
as 
Update Sayac set islem += 1

create table ToplamKategori
(
	Adet tinyint
)

update ToplamKategori set Adet = 
(
	select count(*) from Kategori
)

create trigger KategoriArtis 
on Kategori 
after insert 
as 
update ToplamKategori set Adet += 1



create trigger KategoriAzalis 
on Kategori 
after insert 
as 
delete ToplamKategori set Adet -= 1



