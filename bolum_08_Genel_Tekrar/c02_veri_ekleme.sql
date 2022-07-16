INSERT INTO Kategori(KategoriAd) VALUES ('B�LG�SAYAR')
INSERT INTO Kategori(KategoriAd) VALUES ('BEYAZ E�YA')
INSERT INTO Kategori(KategoriAd) VALUES ('K���K EV ALET�')
INSERT INTO Kategori(KategoriAd) VALUES  ('TV')



INSERT INTO Urunler(UrunAd,UrunMarka,Kategori,UrunAlisFiyat,UrunSatisFiyat,UrunStok)
VALUES ('BUZDOLABI','SIEMENS',2,4356,4588,10)

SELECT * FROM Urunler

UPDATE Urunler SET UrunAd='SU ISITICI' WHERE UrunAd='KETTLE'



SELECT KategoriAd,COUNT(*) AS 'TOPLAM �R�N' FROM Urunler INNER JOIN Kategori

ON Urunler.Kategori=Kategori.KategoriId GROUP BY KategoriAd ORDER BY COUNT(*)



-- KATEGOR� ADI B�LG�SAYAR OLAN �R�NLER� SATI� F�YATINA 500 TL ZAM YAPALIM...

UPDATE Urunler SET UrunSatisFiyat += 500 
WHERE Kategori=(SELECT KategoriId FROM Kategori
WHERE KategoriAd='B�LG�SAYAR')

SELECT * FROM Urunler

-- KATEGOR� ADI TV OLAN �R�NLER� SATI� F�YATINA %10 TL �ndirim YAPALIM...

UPDATE Urunler SET UrunSatisFiyat *= 0.9 
WHERE Kategori=(SELECT KategoriId FROM Kategori
WHERE KategoriAd='TV')

SELECT * FROM Urunler

-- KATEGOR� ADI TV OLAN �R�NLER� SATI� F�YATINA %20 TL �ndirim YAPALIM...

UPDATE Urunler SET UrunSatisFiyat *= 1.2
WHERE Kategori=(SELECT KategoriId FROM Kategori
WHERE KategoriAd='TV')

SELECT * FROM Urunler

SELECT COUNT(*) AS 'KA� FARKLI �R�N',SUM(URUNSTOK) AS 'STOK SAYISI' FROM Urunler

SELECT * FROM Urunler

 
 SELECT UrunId, UrunAd, UrunMarka, KategoriAd, UrunSatisFiyat, UrunAlisFiyat, URUNSTOK,
(UrunSatisFiyat - UrunAlisFiyat) AS 'KAR',
(UrunSatisFiyat - UrunAlisFiyat) * URUNSTOK AS 'TOPLAM KAR'
FROM Urunler INNER JOIN Kategori
ON Urunler.Kategori=Kategori.KategoriId

SELECT * FROM Urunler




