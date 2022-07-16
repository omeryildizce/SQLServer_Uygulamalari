--create database Satis

use Satis

create table Kategori
(
	KategoriId tinyint identity(1,1) primary key,
	KategoriAd varchar(50)
)

create table Urunler 
(
	UrunId int identity(1,1) primary key,
	UrunAd varchar(50),
	UrunMarka varchar(50),
	Kategori tinyint,
	UrunAlisFiyat decimal (18,2),
	UrunSatisFiyat decimal(18,2),
	UrunStok smallint check(UrunStok > 0),
	UruDurum bit default 1

)

create table Personel 
(
	PersonelId smallint identity(1,1) primary key,
	PersonelAdSoyad varchar (50) 

)

create table Musteri
(
	MusteriId int primary key identity(1,1),
	MusteriAd varchar(50),
	MusteriSoyad varchar(50),
	MusteriSehir varchar(13),
	MusteriBakiye decimal (18,2)
)


create table Hareket 
(
	HareketId int primary key identity(1,1),
	Urun int,
	Musteri int,
	Personel smallint,
	Adet int,
	Tutar decimal(18,2),
	Tarih smalldatetime  
)

truncate table urunler