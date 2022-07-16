-- DDL Komutlarý (Tablo)
-- Create
-- Alter
-- Drop


-- create
-------------------------

create table Dersler 
(
	DERSID tinyint,
	DERSAD varchar(20)
)


-- alter
------------------------
-- add column
alter table Dersler
add KONTENJAN smallint

-- drop column
alter table Dersler
drop column KONTENJAN  


-- drop
--------------------------
 drop table Dersler