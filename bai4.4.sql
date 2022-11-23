select a.TRPHG,
	c.HONV + ' ' + c.TENLOT + ' ' + c.TENNV as 'Họ Tên',
	convert (varchar, a.NG_NHANCHUC, 105), b.sl - 1 
	from PHONGBAN a inner join 
	(select PHG, count(manv) as SL from NHANVIEN group by PHG) b on a.MAPHG = b.PHG
	inner join NHANVIEN c on a.TRPHG = c.MANV;