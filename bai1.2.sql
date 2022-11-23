declare @Thongke table (MADA int, THOIGIAN float);
insert into @Thongke
	select MADA, sum(THOIGIAN) as 'TỔNG SỐ GIỜ LÀM VIỆC'
	from PHANCONG
	group by MADA;
select TENDEAN, cast( THOIGIAN as decimal(5,2)) as 'TỔNG SỐ GIỜ LÀM VIỆC'
	from @Thongke a inner join DEAN b on a.MADA = b.MADA
select TENDEAN, convert(decimal(5,2), THOIGIAN) as 'TỔNG SỐ GIỜ LÀM VIỆC'
	from @Thongke a inner join DEAN b on a.MADA = b.MADA
select TENDEAN, convert(varchar(15), THOIGIAN) as 'TỔNG SỐ GIỜ LÀM VIỆC'
	from @Thongke a inner join DEAN b on a.MADA = b.MADA
select TENDEAN, cast(THOIGIAN as varchar(15)) as 'TỔNG SỐ GIỜ LÀM VIỆC'
	from @Thongke a inner join DEAN b on a.MADA = b.MADA
