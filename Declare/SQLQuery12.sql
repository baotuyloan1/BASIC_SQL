USE SchoolManagement;
GO

-- Tìm ra giáo viên có lương cao nhất
SELECT gv.MAGV
FROM dbo.GIAOVIEN gv
WHERE gv.LUONG =
(
    SELECT MAX(LUONG)FROM dbo.GIAOVIEN
);

-- Lấy ra tuổi của giáo viên có lương cao nhất
SELECT (YEAR(GETDATE())) - YEAR(NGSINH)
FROM dbo.GIAOVIEN gv
WHERE gv.MAGV =
(
    SELECT gv.MAGV
    FROM dbo.GIAOVIEN gv
    WHERE gv.LUONG =
    (
        SELECT MAX(LUONG)FROM dbo.GIAOVIEN
    )
);

--cach 2

-- tạo ra biến kiểu char lưu mã gv có lương cao nhất
DECLARE @MaxSalaryMASV CHAR(10);

SELECT @MaxSalaryMASV = gv.MAGV
FROM dbo.GIAOVIEN gv
WHERE gv.LUONG =
(
    SELECT MAX(LUONG)FROM dbo.GIAOVIEN
);

SELECT (YEAR(GETDATE())) - YEAR(NGSINH)
FROM dbo.GIAOVIEN gv
WHERE gv.MAGV = @MaxSalaryMASV;

-- lấy ra tuổi của giao viên có lương > lương trung bình và lương < max lương	
DECLARE @AvgLuongMaGV CHAR(10);
SELECT @AvgLuongMaGV = gv.MAGV
FROM dbo.GIAOVIEN gv
WHERE gv.LUONG <
(
    SELECT MAX(LUONG)FROM dbo.GIAOVIEN
)
      AND gv.LUONG >
      (
          SELECT AVG(LUONG)FROM dbo.GIAOVIEN
      );



SELECT * FROM dbo.GIAOVIEN WHERE MAGV = @AvgLuongMaGV


------------------------------------------------

DECLARE @i INT

-- khơi tạo và giá trị mặc định
DECLARE @j INT = 0; 	
SET @i += 1;
SET @j = @i


DECLARE @tableLuong	 TABLE(char)
-- set thông qua câu select
 SELECT @j= LUONG FROM dbo.GIAOVIEN

 DECLARE @MaGV  CHAR(10) = '001'
 -- 1. Xuất ra số lượng người thân của giáo viên 001
SELECT COUNT(*) FROM dbo.NGUOITHAN WHERE  MAGV = @MaGV


-- 2. Xuất ra tên có giáo viên thấp nhất
DECLARE @MinLuong INT
DECLARE @TenGV NVARCHAR(100)

SELECT @MinLuong = MIN(Luong) FROM dbo.GIAOVIEN 
SELECT @TenGV = gv.HOTEN FROM dbo.GIAOVIEN gv WHERE gv.Luong = @MinLuong

PRINT @TenGV