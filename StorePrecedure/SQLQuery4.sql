USE SchoolManagement;
GO


/*
-- Store PROCEDURE
-- Là chương trình hay thủ tục
- Ta có thể dùng Transact- SQL Excute (EXEC) để thực thi các stored precedure.
- Stored procedure khác với các hàm xử lý là g ía trị trả về của chúng
- Không chứa trong tên và chúng không được sử dụng trực tiếp trong biểu thức
*/


/*
- Động: Có thể chỉnh sửa khối lệnh, tái sử dụng nhiều lần
- Nhanh hơn: Tự phân tích cú pháp cho tối ưu. Và tạo bản sao để lần sau chạy không cần thực thi lại từ đầu
- Bảo mật: giới hạn quyền cho user nào sử dụng user nào không
- Giảm bandwidth: với các gói transaction lớn. Vài ngàn dòng lệnh 1 lúc thì store sẽ đảm bảo
*/

/*
CREATE PROC <Tên store>
[Parameter nếu có]
AS
BEGIN
	<Code xử lý>
AS
*/

CREATE PROC USP_Test
    @MaGv NVARCHAR(10),
    @IsPrint BIT
AS
BEGIN
    IF @IsPrint = 1
    BEGIN
        SELECT *
        FROM dbo.GIAOVIEN
        WHERE MAGV = @MaGv;
    END
	ELSE
	PRINT @IsPrint;
END;


EXEC dbo.USP_Test @MaGv = N'001',    -- nvarchar(10)
                  @IsPrint = 1 -- bit
EXECUTE dbo.USP_Test @MaGv = N'002',    -- nvarchar(10)
                     @IsPrint = NULL -- bit
