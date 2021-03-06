USE [OgreciNot]
GO
/****** Object:  Table [dbo].[Dersler]    Script Date: 17.07.2022 12:39:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dersler](
	[DERSID] [tinyint] IDENTITY(1,1) NOT NULL,
	[DERSAD] [varchar](20) NULL,
 CONSTRAINT [PK_Dersler] PRIMARY KEY CLUSTERED 
(
	[DERSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kulupler]    Script Date: 17.07.2022 12:39:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kulupler](
	[KulupID] [tinyint] IDENTITY(1,1) NOT NULL,
	[KulupAd] [varchar](20) NULL,
 CONSTRAINT [PK_Kulupler] PRIMARY KEY CLUSTERED 
(
	[KulupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notlar]    Script Date: 17.07.2022 12:39:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notlar](
	[NOTID] [int] IDENTITY(1,1) NOT NULL,
	[OGRENCI] [int] NULL,
	[DERS] [tinyint] NULL,
	[SINAV1] [smallint] NULL,
	[SINAV2] [smallint] NULL,
	[SINAV3] [smallint] NULL,
	[ORTALAMA] [decimal](5, 2) NULL,
	[DURUM] [bit] NULL,
 CONSTRAINT [PK_Notlar] PRIMARY KEY CLUSTERED 
(
	[NOTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ogrenciler]    Script Date: 17.07.2022 12:39:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ogrenciler](
	[OGRID] [int] IDENTITY(1,1) NOT NULL,
	[OGRAD] [varchar](50) NULL,
	[OGRSOYAD] [varchar](50) NULL,
	[OGRCINSIYET] [varchar](5) NULL,
	[OGRKULUP] [tinyint] NULL,
	[OGRSEHIR] [varchar](13) NULL,
 CONSTRAINT [PK_Ogrenciler] PRIMARY KEY CLUSTERED 
(
	[OGRID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Dersler] ON 

INSERT [dbo].[Dersler] ([DERSID], [DERSAD]) VALUES (1, N'Tarih')
INSERT [dbo].[Dersler] ([DERSID], [DERSAD]) VALUES (2, N'Matematik')
INSERT [dbo].[Dersler] ([DERSID], [DERSAD]) VALUES (3, N'Fİzik')
SET IDENTITY_INSERT [dbo].[Dersler] OFF
GO
SET IDENTITY_INSERT [dbo].[Kulupler] ON 

INSERT [dbo].[Kulupler] ([KulupID], [KulupAd]) VALUES (1, N'Bilişim')
INSERT [dbo].[Kulupler] ([KulupID], [KulupAd]) VALUES (2, N'Kitaplık')
INSERT [dbo].[Kulupler] ([KulupID], [KulupAd]) VALUES (3, N'Satranç')
INSERT [dbo].[Kulupler] ([KulupID], [KulupAd]) VALUES (4, N'Gezi')
INSERT [dbo].[Kulupler] ([KulupID], [KulupAd]) VALUES (5, N'Temizlik')
SET IDENTITY_INSERT [dbo].[Kulupler] OFF
GO
SET IDENTITY_INSERT [dbo].[Notlar] ON 

INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (1, 2, 2, 85, 65, 74, CAST(74.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (2, 4, 2, 75, 50, 80, CAST(68.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (3, 6, 2, 80, 60, 70, CAST(70.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (4, 1, 2, 85, 47, 74, CAST(68.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (5, 3, 2, 75, 25, 40, CAST(46.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (6, 5, 2, 45, 17, 70, CAST(44.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (7, 25, 2, 75, 65, 25, CAST(55.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (8, 7, 2, 45, 56, 54, CAST(51.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (9, 8, 2, 65, 60, 45, CAST(56.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (10, 9, 2, 85, 48, 35, CAST(56.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (11, 10, 2, 100, 98, 57, CAST(85.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (12, 11, 2, 70, 54, 62, CAST(62.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (13, 12, 2, 40, 19, 55, CAST(38.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (14, 13, 2, 50, 49, 60, CAST(53.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (15, 14, 2, 60, 55, 50, CAST(55.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (16, 15, 2, 70, 49, 75, CAST(64.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (17, 16, 2, 80, 65, 90, CAST(78.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (18, 17, 2, 90, 75, 56, CAST(73.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (19, 18, 2, 100, 80, 45, CAST(75.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (20, 19, 2, 90, 25, 35, CAST(50.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (21, 20, 2, 75, 50, 25, CAST(50.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (22, 21, 2, 60, 30, 87, CAST(59.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (23, 22, 2, 45, 45, 58, CAST(49.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (24, 23, 2, 30, 70, 50, CAST(50.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (25, 24, 2, 15, 80, 20, CAST(38.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (26, 1, 1, 85, 65, 74, CAST(74.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (27, 2, 1, 75, 50, 80, CAST(68.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (28, 3, 1, 80, 60, 70, CAST(70.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (29, 4, 1, 85, 47, 74, CAST(68.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (30, 5, 1, 75, 25, 40, CAST(46.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (31, 6, 1, 45, 17, 70, CAST(44.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (32, 7, 1, 75, 65, 25, CAST(55.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (33, 8, 1, 90, 56, 54, CAST(51.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (34, 9, 1, 85, 60, 45, CAST(56.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (35, 10, 1, 85, 48, 35, CAST(56.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (36, 11, 1, 100, 98, 57, CAST(85.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (37, 12, 1, 70, 54, 62, CAST(62.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (38, 13, 1, 75, 19, 55, CAST(38.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (39, 14, 1, 50, 49, 60, CAST(53.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (40, 15, 1, 60, 55, 50, CAST(55.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (41, 16, 1, 70, 49, 75, CAST(64.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (42, 17, 1, 80, 65, 90, CAST(78.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (43, 18, 1, 90, 75, 56, CAST(73.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (44, 19, 1, 100, 80, 45, CAST(75.00 AS Decimal(5, 2)), 1)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (45, 20, 1, 90, 25, 35, CAST(50.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (46, 21, 1, 75, 50, 25, CAST(50.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (47, 22, 1, 60, 30, 87, CAST(59.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (48, 23, 1, 45, 45, 58, CAST(49.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (49, 24, 1, 30, 70, 50, CAST(50.00 AS Decimal(5, 2)), 0)
INSERT [dbo].[Notlar] ([NOTID], [OGRENCI], [DERS], [SINAV1], [SINAV2], [SINAV3], [ORTALAMA], [DURUM]) VALUES (50, 25, 1, 45, 80, 20, CAST(38.00 AS Decimal(5, 2)), 0)
SET IDENTITY_INSERT [dbo].[Notlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Ogrenciler] ON 

INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (1, N'Ali', N'Kaya', N'Erkek', 1, N'Ankara')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (2, N'Buse', N'Çınar', N'Kadın', 2, N'Muş')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (3, N'Hamit', N'Yılmaz', N'Erkek', 3, N'Bursa')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (4, N'Zeynep', N'Demir', N'Kadın', 4, N'Kayseri')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (5, N'Hande', N'Çiçek', N'Kadın', 5, N'Ankara')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (6, N'Canan', N'Konak', N'Kadın', 5, N'İstanbul')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (7, N'Bayram', N'Yüce', N'Erkek', 4, N'Erzurum')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (8, N'Mehmet', N'Yüce', N'Erkek', 3, N'Erzurum')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (9, N'Ali', N'Sonay', N'Erkek', 2, N'Ankara')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (10, N'Umut', N'Kaya', N'Erkek', 1, N'İstanbul')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (11, N'Ömer', N'Yıldız', N'Erkek', 1, N'Sinop')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (12, N'Adem', N'Konak', N'Erkek', 1, N'Diyarbakır')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (13, N'Fatma', N'Kaya', N'Kadın', 2, N'İstanbul')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (14, N'Ali', N'Yılmaz', N'Erkek', 2, N'Ankara')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (15, N'Buse', N'Demir', N'Kadın', 3, N'Çankkale')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (16, N'Hamit', N'Sonay', N'Erkek', 3, N'Bolu')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (17, N'Zeynep', N'Yüce', N'Kadın', 4, N'Çankırı')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (18, N'Hande', N'Kaya', N'Kadın', 4, N'Aydın')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (19, N'Canan', N'Yıldız', N'Kadın', 5, N'İzmir')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (20, N'Bayram', N'Eski', N'Erkek', 5, N'Antalya')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (21, N'Mehmet', N'Demirel', N'Erkek', 1, N'Batman')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (22, N'Ali', N'Can', N'Erkek', 3, N'Ankara')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (23, N'Umut', N'Bulut', N'Erkek', 5, N'İstanbul')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (24, N'Ömer', N'Toprak', N'Erkek', 2, N'Edirne')
INSERT [dbo].[Ogrenciler] ([OGRID], [OGRAD], [OGRSOYAD], [OGRCINSIYET], [OGRKULUP], [OGRSEHIR]) VALUES (25, N'Hande', N'Çam', N'Kadın', 4, N'İzmir')
SET IDENTITY_INSERT [dbo].[Ogrenciler] OFF
GO
ALTER TABLE [dbo].[Notlar]  WITH CHECK ADD  CONSTRAINT [FK_Notlar_Dersler] FOREIGN KEY([DERS])
REFERENCES [dbo].[Dersler] ([DERSID])
GO
ALTER TABLE [dbo].[Notlar] CHECK CONSTRAINT [FK_Notlar_Dersler]
GO
ALTER TABLE [dbo].[Notlar]  WITH CHECK ADD  CONSTRAINT [FK_Notlar_Ogrenciler] FOREIGN KEY([OGRENCI])
REFERENCES [dbo].[Ogrenciler] ([OGRID])
GO
ALTER TABLE [dbo].[Notlar] CHECK CONSTRAINT [FK_Notlar_Ogrenciler]
GO
ALTER TABLE [dbo].[Ogrenciler]  WITH CHECK ADD  CONSTRAINT [FK_Ogrenciler_Kulupler] FOREIGN KEY([OGRKULUP])
REFERENCES [dbo].[Kulupler] ([KulupID])
GO
ALTER TABLE [dbo].[Ogrenciler] CHECK CONSTRAINT [FK_Ogrenciler_Kulupler]
GO
