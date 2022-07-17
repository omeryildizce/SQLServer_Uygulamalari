create function KucukHarf(@isim varchar(20))
returns varchar
as 

begin
return lower(@isim)
end

select dbo.KucukHarf(Ad), Ad, Stok from Urun

alter function KucukHarf(@isim varchar(20))
returns varchar (20)
as 

begin
return lower(@isim)
end

select dbo.KucukHarf(Ad), Ad, Stok from Urun

