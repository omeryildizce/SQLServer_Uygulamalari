-- subquery

-- Dersler tablosunda ismi matematik olan derse ait s�nav not bilgisini getiren kodu yaz�n�z

select * from Notlar where DERS = (select DERSID from Dersler where DERSAD = 'matematik')
