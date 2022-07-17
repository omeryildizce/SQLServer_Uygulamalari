create table Kasa 
(
	Toplam decimal (18,2)
)

insert into Kasa values (0)

select * from Kasa

update Kasa set Toplam += 
(
	select sum(Tutar) from Hareket
)


select * from Kasa
