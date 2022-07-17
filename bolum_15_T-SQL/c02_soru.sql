-- 123 = 6
---- 123 -> 1 + 2 + 3 = 6

declare @sayi int, @bir int, @on int, @yuz int, @toplam int
set @sayi = 456
set @bir = @sayi  % 10
set @on =  (@sayi / 10)  % 10
set @yuz = @sayi / 100
set @toplam = 0  
set @toplam =  @bir + @on + @yuz

select @toplam as 'Toplam' 




