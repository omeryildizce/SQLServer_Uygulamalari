-- subquery

-- Dersler tablosunda ismi matematik olan derse ait sýnav not bilgisini getiren kodu yazýnýz

select * from Notlar where DERS = (select DERSID from Dersler where DERSAD = 'matematik')
