select HONV, TENLOT, TENNV, round(LUONG,2) as 'Lương' from NHANVIEN  where LUONG > (
	select round(AVG(luong),2) from NHANVIEN
		where PHG in (select MAPHG from PHONGBAN where TENPHG = 'Nghiên cứu'));