USE SchoolManagement;
GO


DECLARE @LuongTrungBinh INT;
DECLARE @SoLuongGiaoVien INT;

SELECT @SoLuongGiaoVien = COUNT(MAGV)
FROM dbo.GIAOVIEN;
SELECT @LuongTrungBinh = SUM(LUONG) / @SoLuongGiaoVien
FROM dbo.GIAOVIEN;

PRINT @LuongTrungBinh;

DECLARE @MaGV CHAR(10) = '001';
DECLARE @LuongGiaoVien INT = 0;

SELECT @LuongGiaoVien = LUONG
FROM dbo.GIAOVIEN
WHERE MAGV = @MaGV;

--- Nếu lương của @MaGV > @LuongTrungBinh
--- Xuất ra lớn hơn
--- Ngược lại
--- Nhỏ hơn
-- Begin để gom nó thành code block
PRINT @LuongGiaoVien;
IF @LuongTrungBinh > @LuongGiaoVien
BEGIN
    PRINT N'Nhỏ hơn';
    PRINT @LuongGiaoVien;
    PRINT @LuongTrungBinh;
END;
ELSE
BEGIN
    PRINT @LuongGiaoVien;
    PRINT @LuongTrungBinh;
    PRINT N'Lớn hơn';
END;


-- Ví dụ 2: Update lương c ủa toàn bộ giáo viên nếu lương nhập vào cao hơn lương trung bình
-- Ngược lại chỉ chỉ update lương giáo viên nữ
DECLARE @LuongTrungBinh1 INT;
SELECT @LuongTrungBinh1 = AVG(LUONG)
FROM dbo.GIAOVIEN;


DECLARE @Luong INT = 199;
IF @Luong > @LuongTrungBinh1
BEGIN
    UPDATE dbo.GIAOVIEN
    SET LUONG = @LuongTrungBinh1;
END;
ELSE
BEGIN
    UPDATE dbo.GIAOVIEN
    SET LUONG = @Luong
    WHERE PHAI = N'Nữ';
END;