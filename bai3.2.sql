declare @Thongke table (MaP int, MaNVTP int, TK int);
insert into @Thongke
select phg, ma_nql, count(manv) from NHANVIEN group by PHG, MA_NQL;
declare @Max int;
select @Max = max(tk) from @Thongke;
select TENPHG, HONV + ' ' + TENLOT + ' ' + TENNV, HONV + ' ' + TENLOT + 'Fboly'
from PHONGBAN a inner join(
select*from @Thongke where tk = @Max) b on a.MAPHG = b.MaP
inner join NHANVIEN c on c.MANV = b.MaNVTP;