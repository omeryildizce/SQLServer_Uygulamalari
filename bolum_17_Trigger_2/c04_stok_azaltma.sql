create trigger Azalt
on Urun
After Delete
as
Declare @StokSayi int
select @StokSayi = Stok from deleted
update Stok set ToplamUrun -= @StokSayi


select * from Stok