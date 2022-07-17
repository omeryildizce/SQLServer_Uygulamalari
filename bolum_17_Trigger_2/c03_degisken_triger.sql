create trigger Arttir
on Urun
After insert 
as
Declare @StokSayi int
select @StokSayi = Stok from inserted
update Stok set ToplamUrun += @StokSayi


select * from Stok