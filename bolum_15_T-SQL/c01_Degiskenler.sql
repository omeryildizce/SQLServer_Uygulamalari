declare @sayi int
select @sayi
set @sayi = 24
select @sayi as 'Sayý 1'


declare @kisi1 varchar(20)
set @kisi1 = 'Murat'
select @kisi1

declare @sayi1 int ,  @sayi2 int ,  @toplam int 
set @sayi1 = 20
set @sayi2 = 30
set @toplam = @sayi1 + @sayi2 

select @toplam as 'Toplam' 


declare @vize int, @final int
declare @ort decimal(5,2)

set @vize = 60
set @final = 70
set @ort = @vize * 0.4 + @final * 0.6
select @ort as 'Ortalama'
