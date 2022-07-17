declare @sayac int 
set @sayac = 1

while @sayac <= 5
begin
	print @sayac
	set @sayac = @sayac +  1
end


set @sayac = 1
declare @toplam int 
set @toplam = 0

while @sayac <= 10
begin
	set @toplam = @toplam + @sayac
	set @sayac = @sayac +  1
end

print @toplam