use Satis
if(10<5 )
	print 'Merhaba'
else
	print 'Hoþçakal'


if(10>5 )
	print 'Merhaba'
else
	print 'Hoþçakal'


if (select sum(UrunStok) from Urunler  ) > 100
	print 'Ürün sayýsý yüzden büyük'
else
	print 'Ürün sayýsý yüzden küçük'