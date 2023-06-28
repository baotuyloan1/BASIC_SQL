USE SchoolManagement
GO


-- Tao index tren bảng nguoithan
-- Tăng tốc độ tìm kiếm , nhưng tốc độ thêm, xóa sửa bị chậm đi
-- Cho phép các trường trùng nhau
CREATE INDEX IndexName ON dbo.NGUOITHAN(TEN)


-- Không cho phép các trường trùng nhau
CREATE UNIQUE INDEX INdexNameUnique ON dbo.GIAOVIEN(MAGV)

SELECT * FROM dbo.NGUOITHAN WHERE MAGV = '001'


DECLARE @i INT  = 1
WHILE (@i < 1000000)
BEGIN
	INSERT dbo.NGUOITHAN
	(
	    MAGV,
	    TEN,
	    NGSINH,
	    PHAI
	)
	VALUES
	(   N'001',  -- MAGV - nchar(3)
	    N'Test' + CAST(@i as nvarchar(10)),  -- TEN - nchar(12)
	    GETDATE(), -- NGSINH - datetime
	    N'Name'  -- PHAI - nchar(3)
	    )
	SET @i += 1;
END
