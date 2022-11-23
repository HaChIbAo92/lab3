select MADA,
sum(THOIGIAN) as 'Tổng số giờ làm việc',
CEILING(sum(THOIGIAN)) as 'Tổng số giờ làm viêc - celling',
FLOOR(sum(THOIGIAN)) as 'Tổng số giờ làm viêc - floor',
ROUND(sum(THOIGIAN),2) as 'Tổng số giờ làm viêc - round'
from PHANCONG
group by MADA;
