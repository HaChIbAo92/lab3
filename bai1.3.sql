select PHG, convert(decimal(15,2), AVG(luong),1) as 'luong tb'
from NHANVIEN
Group by PHG;
select PHG, FORMAT( convert(decimal(15,2), AVG(luong),1) , 'N' , 'vi-VN') as 'luong tb'
from NHANVIEN
Group by PHG;
select PHG, convert(varchar(15),cast( AVG(luong) as money),1) as 'luong tb'
from NHANVIEN
Group by PHG;
