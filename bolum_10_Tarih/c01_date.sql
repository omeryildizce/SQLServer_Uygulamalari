select * from Hareket
where DATEPART(DAY, Tarih) between 15 and 20 and Musteri = 3

select * from Hareket 
where DATEPART (Day, Tarih) between 15 and 16
and Musteri = (select MusteriId from Musteri where MusteriSehir = 'Ankara')