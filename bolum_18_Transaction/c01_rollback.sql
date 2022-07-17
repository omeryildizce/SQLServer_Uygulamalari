use Yeni
begin transaction 
insert into Kategori (Ad) values ('Tv')
insert into Kategori (Ad) values ('Halý')
select * from Kategori 

Rollback

select * from Kategori 

