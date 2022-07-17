create function KDV(@fiyat int, @kdv int)
returns decimal(18,2)
as
begin
return @fiyat + (@fiyat * @kdv / 100)
end

alter function KDV(@fiyat decimal, @kdv int)
returns decimal(18,2)
as
begin
return @fiyat + (@fiyat * @kdv / 100)
end


select Ad, AlisFiyati, SatisFiyati, dbo.KDV(SatisFiyati, 18) as 'KDV' from Urun

