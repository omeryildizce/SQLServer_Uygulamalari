declare @kisiler  table
(
	KisiID int identity(1,1),
	KisiAd varchar(20),
	KisiSehir varchar(20)

)

insert into @kisiler (KisiAd, KisiSehir) values ('Ali', 'Ankara') 
insert into @kisiler (KisiAd, KisiSehir) values ('Emel', 'Bolu') 

select * from @kisiler


