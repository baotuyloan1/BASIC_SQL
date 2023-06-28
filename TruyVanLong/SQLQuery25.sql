USE SchoolManagement
GO



-- kiểm tra xem giáo viên 001 có phải là giáo viên quản lý chuyên môn hay không, nếu là giáo viên chuyên môn mới xuất ra, không phải giáo viên chủ nhiệm thì không in ra
SELECT * FROM dbo.GIAOVIEN WHERE MAGV = '001'AND MAGV IN (SELECT GVQLCM FROM dbo.GIAOVIEN WHERE GVQLCM IS NOT NULL)


-- truy vấn lồng trong form
SELECT * FROM dbo.GIAOVIEN gv INNER JOIN (SELECT * FROM dbo.DETAI WHERE dbo.DETAI.KINHPHI > 200) dt  ON dt.GVCNDT = gv.MAGV

-- xuất ra danh sachs giáo viên tham gia nhiều hơn 1 đề tài không dùng GROUP BY
SELECT * FROM dbo.GIAOVIEN GV WHERE 1 < (SELECT COUNT(TG.MADT) FROM dbo.THAMGIADT TG WHERE TG.MAGV = GV.MAGV)

-- xuất ra danh sachs giáo viên tham gia nhiều hơn 1 đề tài , sử dụng GRUOP BY
SELECT * FROM dbo.GIAOVIEN GV WHERE GV.MAGV IN (SELECT T.MAGV FROM dbo.THAMGIADT t GROUP BY t.MAGV HAVING COUNT(t.MADT) > 1)




-- Xuất ra thông tin của khoa mà có nhiều hơn 2 giáo viên.
SELECT * FROM dbo.KHOA K WHERE 2 < (SELECT COUNT(dbo.GIAOVIEN.MAGV) FROM dbo.BOMON INNER JOIN dbo.GIAOVIEN ON GIAOVIEN.MABM = BOMON.MABM WHERE dbo.BOMON.MAKHOA = K.MAKHOA  )

SELECT * FROM dbo.KHOA
/*
1.	Xuất ra thông tin giáo viên có hơn 2 người thân
*/

SELECT * FROM dbo.GIAOVIEN GV WHERE 1 < (SELECT COUNT(NT.MAGV) FROM dbo.NGUOITHAN NT WHERE NT.MAGV = GV.MAGV)