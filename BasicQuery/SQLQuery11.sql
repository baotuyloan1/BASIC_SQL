USE SchoolManagement
GO

SELECT * FROM dbo.BOMON

SELECT TENBM AS 'Tên bộ môn', MABM FROM dbo.BOMON 

SELECT *, YEAR(GETDATE()) - YEAR(NGSINH) AS 'Tuổi' FROM dbo.GIAOVIEN WHERE YEAR(GETDATE()) - YEAR(NGSINH) > 40

-- lấy ra giáo viên là trưởng bộ môn
SELECT gv.* FROM dbo.GIAOVIEN gv INNER JOIN dbo.BOMON bm ON gv.MAGV = bm.TRUONGBM

-- Đếm số lượng người thân của giáo viên có mã GV là 007
SELECT COUNT(nt.TEN) FROM dbo.NGUOITHAN nt INNER JOIN dbo.GIAOVIEN gv ON  nt.MAGV = gv.MAGV WHERE nt.MAGV = '007'


-- Thông tin giáo viên và thông tin giáo viên quản lý chủ nhiệm
SELECT * FROM dbo.GIAOVIEN gv INNER JOIN dbo.GIAOVIEN gvqlcn ON gv.GVQLCM = gvqlcn.MAGV

-- xuất ra số lượng giáo viên của khoa CNTT
SELECT COUNT(*) FROM dbo.GIAOVIEN gv INNER JOIN dbo.BOMON bm ON bm.MABM = gv.MABM INNER JOIN dbo.KHOA k ON k.MAKHOA = bm.MAKHOA WHERE k.MAKHOA LIKE 'CNTT'