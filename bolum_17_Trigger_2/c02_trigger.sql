update Stok set ToplamUrun = 
(
	select count(*) from Urun
)

CREATE TRIGGER Arttir
on Urun
after insert 
as 
Update Stok set ToplamUrun += 1

select count(*) from Urun

CREATE TRIGGER Azalt
on Urun
after delete 
as 
Update Stok set ToplamUrun -= 1

select sum(Stok) from Urun

update Stok set ToplamUrun = 
(
	select sum(Stok) from Urun
)

drop trigger  arttir
drop trigger azalt

