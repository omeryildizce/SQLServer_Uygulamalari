create database Yeni

use Yeni

create table Musteri 
(
	ID int primary key identity(1,1),
	Ad varchar(20),
	Soyad varchar(20),
	Sehir varchar(15),
	Bakiye decimal(18,2)
)

create table Kategori 
(
	KategoriID int primary key identity(1,1),
	Ad varchar(20)
)

create table Urun 
(
	UrunID int primary key identity(1,1),
	Ad varchar(20),
	AlisFiyati decimal(18,2),
	SatisFiyati decimal(18,2),
	Stok smallint,
	Durum bit,
	KategoriId int

)

create table Satis 
(
	SatisID int primary key identity(1,1),
	MusteriId int,
	UrunId int,
	Tarih date,

)