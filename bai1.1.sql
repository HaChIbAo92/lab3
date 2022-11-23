
select MA_NVIEN, MADA, STT,
cast (THOIGIAN as decimal(5,1)) as 'THOIGIAN' from PHANCONG;

select MA_NVIEN, MADA, STT,
convert (decimal(5,1), THOIGIAN) as 'THOIGIAN' from PHANCONG;
