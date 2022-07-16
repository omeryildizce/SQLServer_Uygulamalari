INSERT INTO Kategori(KategoriAd) VALUES ('BÝLGÝSAYAR')
INSERT INTO Kategori(KategoriAd) VALUES ('BEYAZ EÞYA')
INSERT INTO Kategori(KategoriAd) VALUES ('KÜÇÜK EV ALETÝ')
INSERT INTO Kategori(KategoriAd) VALUES  ('TV')



INSERT INTO Urunler(UrunAd,UrunMarka,Kategori,UrunAlisFiyat,UrunSatisFiyat,UrunStok)
VALUES ('BUZDOLABI','SIEMENS',2,4356,4588,10)

SELECT * FROM Urunler

UPDATE Urunler SET UrunAd='SU ISITICI' WHERE UrunAd='KETTLE'



SELECT KategoriAd,COUNT(*) AS 'TOPLAM ÜRÜN' FROM Urunler INNER JOIN Kategori

ON Urunler.Kategori=Kategori.KategoriId GROUP BY KategoriAd ORDER BY COUNT(*)



-- KATEGORÝ ADI BÝLGÝSAYAR OLAN ÜRÜNLERÝ SATIÞ FÝYATINA 500 TL ZAM YAPALIM...

UPDATE Urunler SET UrunSatisFiyat += 500 
WHERE Kategori=(SELECT KategoriId FROM Kategori
WHERE KategoriAd='BÝLGÝSAYAR')

SELECT * FROM Urunler

-- KATEGORÝ ADI TV OLAN ÜRÜNLERÝ SATIÞ FÝYATINA %10 TL Ýndirim YAPALIM...

UPDATE Urunler SET UrunSatisFiyat *= 0.9 
WHERE Kategori=(SELECT KategoriId FROM Kategori
WHERE KategoriAd='TV')

SELECT * FROM Urunler

-- KATEGORÝ ADI TV OLAN ÜRÜNLERÝ SATIÞ FÝYATINA %20 TL Ýndirim YAPALIM...

UPDATE Urunler SET UrunSatisFiyat *= 1.2
WHERE Kategori=(SELECT KategoriId FROM Kategori
WHERE KategoriAd='TV')

SELECT * FROM Urunler

SELECT COUNT(*) AS 'KAÇ FARKLI ÜRÜN',SUM(URUNSTOK) AS 'STOK SAYISI' FROM Urunler

SELECT * FROM Urunler

 
 SELECT UrunId, UrunAd, UrunMarka, KategoriAd, UrunSatisFiyat, UrunAlisFiyat, URUNSTOK,
(UrunSatisFiyat - UrunAlisFiyat) AS 'KAR',
(UrunSatisFiyat - UrunAlisFiyat) * URUNSTOK AS 'TOPLAM KAR'
FROM Urunler INNER JOIN Kategori
ON Urunler.Kategori=Kategori.KategoriId

SELECT * FROM Urunler




