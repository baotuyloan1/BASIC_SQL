﻿USE SchoolManagement
GO


SELECT * FROM dbo.GIAOVIEN INNER JOIN dbo.BOMON
ON BOMON.MABM = GIAOVIEN.MABM

-- có thể viết tắt inner join thành join
SELECT * FROM dbo.KHOA JOIN dbo.BOMON ON BOMON.MAKHOA = KHOA.MAKHOA