select a.*, DATEDIFF(year, ngsinh, getdate()) +1 as age from NHANVIEN a;