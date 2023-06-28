USE SchoolManagement
GO

-- kiểu dữ liệu tự định nghĩa
-- EXEC sp_addtype 'Tên kiểu dữ liệu', 'Kiểu dữ liệu thực thế', 'Not null' (có hay không đều được)

EXEC sp_addtype  'NNAME', 'NVARCHAR(100)', 'not null'
EXEC sp_addtype NADDRESS , 'NVARCHAR(100)', 'NOT NULL'
EXEC sp_addtype age , INT, NULL

CREATE  TABLE TestType1
(
	Name NNAME,
	Address NADDRESS,
	Age age
)


-- chỉ có thể xóa những type không được sử dụng
EXEC sp_droptype NADDRESS