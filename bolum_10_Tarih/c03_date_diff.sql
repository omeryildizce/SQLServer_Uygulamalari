select DATEDIFF(Year, '1928.09.13',GETDATE() ) as Yýl

select DATEDIFF(Month, '1928.09.13',GETDATE() ) as Ay

select DATEDIFF(WEEK, '1928.09.13',GETDATE() ) as Hafta

select DATEDIFF(Day, '1928.09.13',GETDATE() ) as Gün

select DATEDIFF(HOUR, '1928.09.13',GETDATE() ) as Saat

select DATEDIFF(Day, Tarih ,GETDATE() ) from Hareket 
where HareketId = 1

select DATEDIFF(HOUR, Tarih ,GETDATE() ) from Hareket 
where HareketId = 1

select DATEDIFF(HOUR, Tarih ,GETDATE() ) from Hareket 
where HareketId = 1

select DATEDIFF(MINUTE, Tarih ,GETDATE() ) from Hareket 
where HareketId = 1
