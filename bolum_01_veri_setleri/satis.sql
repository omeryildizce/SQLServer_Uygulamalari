USE [Satis]
GO
/****** Object:  Table [dbo].[City]    Script Date: 17.07.2022 12:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[plaka] [char](2) NOT NULL,
	[sehir] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hareket]    Script Date: 17.07.2022 12:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hareket](
	[HareketId] [int] IDENTITY(1,1) NOT NULL,
	[Urun] [int] NULL,
	[Musteri] [int] NULL,
	[Personel] [smallint] NULL,
	[Adet] [int] NULL,
	[Tutar] [decimal](18, 2) NULL,
	[Tarih] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[HareketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kasa]    Script Date: 17.07.2022 12:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kasa](
	[Toplam] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 17.07.2022 12:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[KategoriId] [tinyint] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[KategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteri]    Script Date: 17.07.2022 12:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri](
	[MusteriId] [int] IDENTITY(1,1) NOT NULL,
	[MusteriAd] [varchar](50) NULL,
	[MusteriSoyad] [varchar](50) NULL,
	[MusteriSehir] [varchar](13) NULL,
	[MusteriBakiye] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MusteriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 17.07.2022 12:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[PersonelId] [smallint] IDENTITY(1,1) NOT NULL,
	[PersonelAdSoyad] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PersonelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sayac]    Script Date: 17.07.2022 12:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sayac](
	[islem] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ToplamKategori]    Script Date: 17.07.2022 12:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToplamKategori](
	[Adet] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 17.07.2022 12:39:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[UrunId] [int] IDENTITY(1,1) NOT NULL,
	[UrunAd] [varchar](50) NULL,
	[UrunMarka] [varchar](50) NULL,
	[Kategori] [tinyint] NULL,
	[UrunAlisFiyat] [decimal](18, 2) NULL,
	[UrunSatisFiyat] [decimal](18, 2) NULL,
	[UrunStok] [smallint] NULL,
	[UruDurum] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UrunId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'01', N'Adana')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'02', N'Adıyaman')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'03', N'Afyon')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'04', N'Ağrı')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'05', N'Amasya')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'06', N'Ankara')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'07', N'Antalya')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'08', N'Artvin')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'09', N'Aydın')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'10', N'Balıkesir')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'11', N'Bilecik')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'12', N'Bingöl')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'13', N'Bitlis')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'14', N'Bolu')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'15', N'Burdur')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'16', N'Bursa')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'17', N'Çanakkale')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'18', N'Çankırı')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'19', N'Çorum')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'20', N'Denizli')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'21', N'Diyarbakır')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'22', N'Edirne')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'23', N'Elazığ')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'24', N'Erzincan')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'25', N'Erzurum')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'26', N'Eskişehir')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'27', N'Gaziantep')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'28', N'Giresun')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'29', N'Gümüşhane')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'30', N'Hakkari')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'31', N'Hatay')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'32', N'Isparta')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'33', N'Mersin')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'34', N'İstanbul')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'35', N'İzmir')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'36', N'Kars')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'37', N'Kastamonu')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'38', N'Kayseri')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'39', N'Kırklareli')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'40', N'Kırşehir')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'41', N'Kocaeli')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'42', N'Konya')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'43', N'Kütahya')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'44', N'Malatya')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'45', N'Manisa')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'46', N'K.Maraş')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'47', N'Mardin')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'48', N'Muğla')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'49', N'Muş')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'50', N'Nevşehir')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'51', N'Niğde')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'52', N'Ordu')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'53', N'Rize')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'54', N'Sakarya')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'55', N'Samsun')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'56', N'Siirt')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'57', N'Sinop')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'58', N'Sivas')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'59', N'Tekirdağ')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'60', N'Tokat')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'61', N'Trabzon')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'62', N'Tunceli')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'63', N'Şanlıurfa')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'64', N'Uşak')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'65', N'Van')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'66', N'Yozgat')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'67', N'Zonguldak')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'68', N'Aksaray')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'69', N'Bayburt')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'70', N'Karaman')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'71', N'Kırıkkale')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'72', N'Batman')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'73', N'Şırnak')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'74', N'Bartın')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'75', N'Ardahan')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'76', N'Iğdır')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'77', N'Yalova')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'78', N'Karabük')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'79', N'Kilis')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'80', N'Osmaniye')
INSERT [dbo].[City] ([plaka], [sehir]) VALUES (N'81', N'Düzce')
GO
SET IDENTITY_INSERT [dbo].[Hareket] ON 

INSERT [dbo].[Hareket] ([HareketId], [Urun], [Musteri], [Personel], [Adet], [Tutar], [Tarih]) VALUES (1, 1, 3, 1, 1, CAST(4588.00 AS Decimal(18, 2)), CAST(N'2022-07-16T00:00:00' AS SmallDateTime))
INSERT [dbo].[Hareket] ([HareketId], [Urun], [Musteri], [Personel], [Adet], [Tutar], [Tarih]) VALUES (2, 6, 3, 1, 1, CAST(3455.00 AS Decimal(18, 2)), CAST(N'2022-07-16T00:00:00' AS SmallDateTime))
INSERT [dbo].[Hareket] ([HareketId], [Urun], [Musteri], [Personel], [Adet], [Tutar], [Tarih]) VALUES (3, 10, 3, 1, 1, CAST(2453.00 AS Decimal(18, 2)), CAST(N'2022-07-16T00:00:00' AS SmallDateTime))
INSERT [dbo].[Hareket] ([HareketId], [Urun], [Musteri], [Personel], [Adet], [Tutar], [Tarih]) VALUES (4, 1, 4, 1, 1, CAST(4588.00 AS Decimal(18, 2)), CAST(N'2022-07-16T00:00:00' AS SmallDateTime))
INSERT [dbo].[Hareket] ([HareketId], [Urun], [Musteri], [Personel], [Adet], [Tutar], [Tarih]) VALUES (5, 7, 4, 1, 2, CAST(2000.00 AS Decimal(18, 2)), CAST(N'2022-07-16T00:00:00' AS SmallDateTime))
INSERT [dbo].[Hareket] ([HareketId], [Urun], [Musteri], [Personel], [Adet], [Tutar], [Tarih]) VALUES (6, 2, 4, 3, 1, CAST(3000.00 AS Decimal(18, 2)), CAST(N'2022-07-16T00:00:00' AS SmallDateTime))
INSERT [dbo].[Hareket] ([HareketId], [Urun], [Musteri], [Personel], [Adet], [Tutar], [Tarih]) VALUES (7, 3, 2, 3, 1, CAST(5500.00 AS Decimal(18, 2)), CAST(N'2022-07-16T00:00:00' AS SmallDateTime))
INSERT [dbo].[Hareket] ([HareketId], [Urun], [Musteri], [Personel], [Adet], [Tutar], [Tarih]) VALUES (8, 9, 2, 3, 1, CAST(35.00 AS Decimal(18, 2)), CAST(N'2022-07-16T00:00:00' AS SmallDateTime))
INSERT [dbo].[Hareket] ([HareketId], [Urun], [Musteri], [Personel], [Adet], [Tutar], [Tarih]) VALUES (9, 10, 2, 3, 1, CAST(2453.00 AS Decimal(18, 2)), CAST(N'2022-07-16T00:00:00' AS SmallDateTime))
INSERT [dbo].[Hareket] ([HareketId], [Urun], [Musteri], [Personel], [Adet], [Tutar], [Tarih]) VALUES (11, 10, 4, 1, 1, CAST(2000.00 AS Decimal(18, 2)), CAST(N'2022-07-15T00:00:00' AS SmallDateTime))
INSERT [dbo].[Hareket] ([HareketId], [Urun], [Musteri], [Personel], [Adet], [Tutar], [Tarih]) VALUES (12, 5, 3, 1, 2, CAST(13500.00 AS Decimal(18, 2)), CAST(N'2022-06-05T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Hareket] OFF
GO
INSERT [dbo].[Kasa] ([Toplam]) VALUES (CAST(28072.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([KategoriId], [KategoriAd]) VALUES (1, N'BİLGİSAYAR')
INSERT [dbo].[Kategori] ([KategoriId], [KategoriAd]) VALUES (2, N'BEYAZ EŞYA')
INSERT [dbo].[Kategori] ([KategoriId], [KategoriAd]) VALUES (3, N'KÜÇÜK EV ALETİ')
INSERT [dbo].[Kategori] ([KategoriId], [KategoriAd]) VALUES (4, N'TV')
INSERT [dbo].[Kategori] ([KategoriId], [KategoriAd]) VALUES (5, N'Mobilya')
INSERT [dbo].[Kategori] ([KategoriId], [KategoriAd]) VALUES (6, N'Diğer')
SET IDENTITY_INSERT [dbo].[Kategori] OFF
GO
SET IDENTITY_INSERT [dbo].[Musteri] ON 

INSERT [dbo].[Musteri] ([MusteriId], [MusteriAd], [MusteriSoyad], [MusteriSehir], [MusteriBakiye]) VALUES (1, N'Veysel', N'Çınar', N'Adana', CAST(18000.00 AS Decimal(18, 2)))
INSERT [dbo].[Musteri] ([MusteriId], [MusteriAd], [MusteriSoyad], [MusteriSehir], [MusteriBakiye]) VALUES (2, N'Emel', N'Özbey', N'Ankara', CAST(21000.00 AS Decimal(18, 2)))
INSERT [dbo].[Musteri] ([MusteriId], [MusteriAd], [MusteriSoyad], [MusteriSehir], [MusteriBakiye]) VALUES (3, N'Aslı', N'Yıldırım', N'Bursa', CAST(16000.00 AS Decimal(18, 2)))
INSERT [dbo].[Musteri] ([MusteriId], [MusteriAd], [MusteriSoyad], [MusteriSehir], [MusteriBakiye]) VALUES (4, N'Mehmet', N'Tunca', N'Adana', CAST(8000.00 AS Decimal(18, 2)))
INSERT [dbo].[Musteri] ([MusteriId], [MusteriAd], [MusteriSoyad], [MusteriSehir], [MusteriBakiye]) VALUES (7, N'Aslı', N'Yıldız', N'Uşak', CAST(17000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Musteri] OFF
GO
SET IDENTITY_INSERT [dbo].[Personel] ON 

INSERT [dbo].[Personel] ([PersonelId], [PersonelAdSoyad]) VALUES (1, N'Ömer YILDIZ')
INSERT [dbo].[Personel] ([PersonelId], [PersonelAdSoyad]) VALUES (2, N'Ali YILMAZ')
INSERT [dbo].[Personel] ([PersonelId], [PersonelAdSoyad]) VALUES (3, N'Buse Öz')
SET IDENTITY_INSERT [dbo].[Personel] OFF
GO
INSERT [dbo].[Sayac] ([islem]) VALUES (11)
GO
SET IDENTITY_INSERT [dbo].[Urunler] ON 

INSERT [dbo].[Urunler] ([UrunId], [UrunAd], [UrunMarka], [Kategori], [UrunAlisFiyat], [UrunSatisFiyat], [UrunStok], [UruDurum]) VALUES (1, N'BUZDOLABI', N'SIEMENS', 2, CAST(4356.00 AS Decimal(18, 2)), CAST(4588.00 AS Decimal(18, 2)), 8, 1)
INSERT [dbo].[Urunler] ([UrunId], [UrunAd], [UrunMarka], [Kategori], [UrunAlisFiyat], [UrunSatisFiyat], [UrunStok], [UruDurum]) VALUES (2, N'LCD', N'LG', 4, CAST(2365.00 AS Decimal(18, 2)), CAST(4158.00 AS Decimal(18, 2)), 4, 1)
INSERT [dbo].[Urunler] ([UrunId], [UrunAd], [UrunMarka], [Kategori], [UrunAlisFiyat], [UrunSatisFiyat], [UrunStok], [UruDurum]) VALUES (3, N'Laptop', N'Monster', 1, CAST(4788.00 AS Decimal(18, 2)), CAST(5500.00 AS Decimal(18, 2)), 4, 1)
INSERT [dbo].[Urunler] ([UrunId], [UrunAd], [UrunMarka], [Kategori], [UrunAlisFiyat], [UrunSatisFiyat], [UrunStok], [UruDurum]) VALUES (4, N'Laptop', N'Lenovo', 1, CAST(3680.00 AS Decimal(18, 2)), CAST(4650.00 AS Decimal(18, 2)), 5, 1)
INSERT [dbo].[Urunler] ([UrunId], [UrunAd], [UrunMarka], [Kategori], [UrunAlisFiyat], [UrunSatisFiyat], [UrunStok], [UruDurum]) VALUES (5, N'Buzdolabı', N'Arçelik', 2, CAST(3366.00 AS Decimal(18, 2)), CAST(3455.00 AS Decimal(18, 2)), 15, 1)
INSERT [dbo].[Urunler] ([UrunId], [UrunAd], [UrunMarka], [Kategori], [UrunAlisFiyat], [UrunSatisFiyat], [UrunStok], [UruDurum]) VALUES (6, N'Çamaşır Makinesi', N'Arçelik', 2, CAST(1258.00 AS Decimal(18, 2)), CAST(1478.00 AS Decimal(18, 2)), 20, 1)
INSERT [dbo].[Urunler] ([UrunId], [UrunAd], [UrunMarka], [Kategori], [UrunAlisFiyat], [UrunSatisFiyat], [UrunStok], [UruDurum]) VALUES (7, N'Fırın', N'SIEMENS', 2, CAST(750.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 10, 1)
INSERT [dbo].[Urunler] ([UrunId], [UrunAd], [UrunMarka], [Kategori], [UrunAlisFiyat], [UrunSatisFiyat], [UrunStok], [UruDurum]) VALUES (8, N'Ütü', N'SIEMENS', 3, CAST(250.00 AS Decimal(18, 2)), CAST(320.00 AS Decimal(18, 2)), 10, 1)
INSERT [dbo].[Urunler] ([UrunId], [UrunAd], [UrunMarka], [Kategori], [UrunAlisFiyat], [UrunSatisFiyat], [UrunStok], [UruDurum]) VALUES (9, N'Su Isıtıcı', N'Arçelik', 3, CAST(20.00 AS Decimal(18, 2)), CAST(35.00 AS Decimal(18, 2)), 50, 1)
INSERT [dbo].[Urunler] ([UrunId], [UrunAd], [UrunMarka], [Kategori], [UrunAlisFiyat], [UrunSatisFiyat], [UrunStok], [UruDurum]) VALUES (10, N'Bulaşık Makinesi', N'Bosch', 2, CAST(2236.00 AS Decimal(18, 2)), CAST(2453.00 AS Decimal(18, 2)), 10, 1)
SET IDENTITY_INSERT [dbo].[Urunler] OFF
GO
ALTER TABLE [dbo].[Urunler] ADD  DEFAULT ((1)) FOR [UruDurum]
GO
ALTER TABLE [dbo].[Hareket]  WITH CHECK ADD  CONSTRAINT [FK_Hareket_Musteri] FOREIGN KEY([Musteri])
REFERENCES [dbo].[Musteri] ([MusteriId])
GO
ALTER TABLE [dbo].[Hareket] CHECK CONSTRAINT [FK_Hareket_Musteri]
GO
ALTER TABLE [dbo].[Hareket]  WITH CHECK ADD  CONSTRAINT [FK_Hareket_Personel] FOREIGN KEY([Personel])
REFERENCES [dbo].[Personel] ([PersonelId])
GO
ALTER TABLE [dbo].[Hareket] CHECK CONSTRAINT [FK_Hareket_Personel]
GO
ALTER TABLE [dbo].[Hareket]  WITH CHECK ADD  CONSTRAINT [FK_Hareket_Urunler] FOREIGN KEY([Urun])
REFERENCES [dbo].[Urunler] ([UrunId])
GO
ALTER TABLE [dbo].[Hareket] CHECK CONSTRAINT [FK_Hareket_Urunler]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Kategori] FOREIGN KEY([Kategori])
REFERENCES [dbo].[Kategori] ([KategoriId])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Kategori]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD CHECK  (([UrunStok]>(0)))
GO
