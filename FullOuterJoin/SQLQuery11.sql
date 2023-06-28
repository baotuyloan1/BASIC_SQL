USE SchoolManagement
GO


-- những cái bảng kia không có thì nó cho là null và lấy đầy đủ cả 2 bảng
SELECT * FROM dbo.GIAOVIEN FULL OUTER JOIN dbo.BOMON  ON BOMON.MABM = GIAOVIEN.MABM

-- gom 2 bảng lại. bên nào không có dữ liệu thì là null
SELECT * FROM dbo.BOMON FULL JOIN dbo.GIAOVIEN ON GIAOVIEN.MABM = BOMON.MABM

--Cross join là tổ hợp mỗi record của bảng A với all record của bảng B
SELECT * FROM dbo.GIAOVIEN CROSS JOIN dbo.BOMON