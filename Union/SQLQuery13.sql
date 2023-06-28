USE SchoolManagement
GO


-- gọp 2 bảng lại với nhau, lấy ra những cái của cả 2 bảng, và có DISTINCT, loại bỏ trùng lặp
SELECT MAGV FROM dbo.GIAOVIEN WHERE LUONG >= 2500
UNION
SELECT MAGV FROM dbo.NGUOITHAN WHERE PHAI = N'Nữ'


-- gọp 2 bảng lại với nhau, lấy ra tất cả của 2 bảng, không dùng DISTINCT nên không loại bỏ trùng lặp
SELECT MAGV FROM dbo.GIAOVIEN WHERE LUONG >=2500
UNION ALL
SELECT MAGV FROM dbo.NGUOITHAN WHERE PHAI = N'Nữ'