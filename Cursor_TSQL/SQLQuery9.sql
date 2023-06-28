



-- khi có nhu cầu duyệt từng record của bảng, với mỗi record có kết quả xử lý riêng thì dùng cuor

/*
 - Declare <Tên con trỏ> cursor for <câu select>

 - open <tên con trỏ>

 - FETCH NEXT FROM <Tên con trỏ> INTO <Danh sách các biến tương ứng với kết quả truy vấn>

- WHILE @@FETCH_STATUS = 0
- BEGIN
- Câu lệnh thực hiện
- FETCH NEXT lại lần nữa
- FETCH NEXT FROM <Tên con trỏ> INTO <Danh sách các biến tương ứng voeis kết quả truy vấn>
- END

- Close <tên con trỏ>
- DEALLOCATE <Tên con trỏ> (xóa vùng nhớ xin cấp phát của con trỏ)
*/


----------------------------------------------------------
-- Từ tuổi của giáo viên
-- Nếu >40 thì cho lương là 2500
-- Nếu <40vaf >30 thì lương là 2000
-- Ngược lại thì lương là 1500

DECLARE GiaoVienCursor CURSOR FOR
SELECT MAGV,
       YEAR(GETDATE()) - YEAR(NGSINH)
FROM dbo.GIAOVIEN;

OPEN GiaoVienCursor;

DECLARE @MaGV CHAR(10);
DECLARE @Tuoi INT;

--Cursor đầu tiên sẽ bắt đàu từ -1 của mảng, nên  @@FETCH_STATUS  = -1; nếu còn data thì @@Fetch_status = 0
FETCH NEXT FROM GiaoVienCursor
INTO @MaGV,
     @Tuoi;

WHILE @@FETCH_STATUS = 0
BEGIN
    IF @Tuoi > 80
    BEGIN
        UPDATE dbo.GIAOVIEN
        SET LUONG = 2500
        WHERE MAGV = @MaGV;
    END;
    ELSE IF @Tuoi > 30
    BEGIN
        UPDATE dbo.GIAOVIEN
        SET LUONG = 2000
        WHERE MAGV = @MaGV;
    END;
    ELSE
    BEGIN
        UPDATE dbo.GIAOVIEN
        SET LUONG = 1500
        WHERE MAGV = @MaGV;
    END;
	FETCH NEXT FROM GiaoVienCursor
INTO @MaGV,
     @Tuoi;

END;


PRINT @MaGV;
PRINT @Tuoi;
CLOSE GiaoVienCursor;
DEALLOCATE GiaoVienCursor;