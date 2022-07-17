use yeni 
create table Tablo1
(
	ID int identity(1,1),
	Ad varchar(20)
)

declare @sayac int = 1
while @sayac < 300001
begin
	insert Tablo1 
	select 'Kitap' + CAST(@sayac as varchar(10))
	set @sayac += 1
end

select count(*) from Tablo1

select * from Tablo1 where ID = 258741

set statistics io on 
set statistics time on

 select * from Tablo1 where ID = 258741


 create clustered index TabloKayitGetir 
 on Tablo1 (ID)
  
  
 select * from Tablo1 where ID = 258741






