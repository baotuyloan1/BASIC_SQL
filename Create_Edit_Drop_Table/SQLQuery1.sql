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

-- delete all data from table
TRUNCATE TABLE dbo.HocSinh

-- delete table from db
DROP TABLE dbo.HocSinh

DROP TABLE dbo.GiaoVien