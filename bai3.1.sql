select 
upper( HONV) AS 'Họ',
LOWER( TENLOT) as 'Tên lót', tennv ,
lower(left( TENNV,1)) + upper(substring(TENNV, 2, 1)) + lower(SUBSTRING(TENNV, 3, LEN(TENNV))), dchi ,
Charindex (' ', DCHI),
Charindex (',',dchi),
substring(dchi, charindex('',DCHI)+1, Charindex(',', dchi) - charindex(' ', DCHI ) -1)
from NHANVIEN;


