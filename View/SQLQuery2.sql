USE SchoolManagement
GO


-- Tạo ra 1 bảng lưu thông tin giáo viên, tên bộ môn và lương của giáo viên đó
SELECT gv.HOTEN, bm.TENBM, gv.LUONG  INTO LuongGiaoVien FROM dbo.GIAOVIEN gv INNER JOIN dbo.BOMON bm ON bm.MABM = gv.MABM

-- Khi chúng ta thay đổi bảng giáo viên thì bảng LuongGiaoVien sẽ không bị thay đổi


-- Sử dụng View là bảng ảo, khi cập nhật dữ liệu ở bảng chính, view sẽ thay đổi theo ( cập nhật dữ liệu theo bảng truy vấn)
-- Tạo ra view TestView từ cau truy vấn
CREATE VIEW TestView AS SELECT * FROM dbo.GIAOVIEN

UPDATE dbo.GIAOVIEN SET LUONG = 1 WHERE MAGV = '001'

SELECT * FROM TestView

DROP VIEW TestView

-- update view
ALTER VIEW TestView AS SELECT HOTEN FROM dbo.GIAOVIEN

CREATE VIEW [Giáo dục miễn phí] AS SELECT * FROM dbo.KHOA

SELECT * FROM [Giáo dục miễn phí]