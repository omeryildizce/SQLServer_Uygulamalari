use Satis
if(10<5 )
	print 'Merhaba'
else
	print 'Ho��akal'


if(10>5 )
	print 'Merhaba'
else
	print 'Ho��akal'


if (select sum(UrunStok) from Urunler  ) > 100
	print '�r�n say�s� y�zden b�y�k'
else
	print '�r�n say�s� y�zden k���k'