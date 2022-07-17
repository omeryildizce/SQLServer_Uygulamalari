create Function StokArttir( @adet int)
returns int 
as 
Begin
Return @adet + 20 
end

select Ad, Stok, dbo.StokArttir(Stok) from Urun