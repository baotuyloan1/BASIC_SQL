CREATE DATABASE SQl_DB_UI;

GO

USE SQl_DB_UI;

CREATE TABLE GiaoVien(
	MaGV NVARCHAR(10),
	Name NVARCHAR(100)
)
GO
CREATE TABLE HocSinh(
	MaHS NVARCHAR(10),
	Name NVARCHAR(100)
)
GO

-- edit table, add new column
ALTER TABLE dbo.HocSinh ADD NgaySinh DATE

-- Delete không điều kiện và Truncate Table khác nhau như nào:
-- Delete không điêu kiện: các hàng cụ thể được xóa 1 cách tuần tự và ghi lại trong bảng giao dịch (transaction log)
-- Câu lệnh DELETE không điều kiện mất thời gian hơn và có thể ảnh hưởng đến hiệu suất của bảng, đặc biệt khi số lượng xóa lớn

--Truncate table:
--Truncate Table xóa toàn bộ dữ liệu trong 1 bảng
-- Không ghi lại các thay đổi trong giao dịch (transaction log) không tạo các mục hoàn tác (undo)
-- Câu lệnh truncate table thường nhanh hơn DELeTe không điều kiện vì nó không ghi lại mỗi thay đổi hàng
-- Truncate table không phục hồi được và không trả lại dữ liệu đã xóa

-- delete all data from table
TRUNCATE TABLE dbo.HocSinh

-- delete table from db
--DROP TABLE dbo.HocSinh

--DROP TABLE dbo.GiaoVien

