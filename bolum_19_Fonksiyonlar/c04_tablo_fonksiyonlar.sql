create function urunbilgi(@urunid int)
returns table
as 

	return select * from Urun where UrunID = @urunid

select * from dbo.urunbilgi(1)

