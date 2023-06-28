USE SchoolManagement
GO

-- bảng bên phải nhập vào bảng bên trái
-- record nào bảng bên phải không có thì để null
-- Record nào bảng bên trái không có thì không điền vào
SELECT * FROM dbo.GIAOVIEN LEFT JOIN dbo.BOMON ON BOMON.MABM = dbo.GIAOVIEN.MABM

SELECT * FROM dbo.BOMON  LEFT JOIN dbo.GIAOVIEN ON BOMON.MABM = dbo.GIAOVIEN.MABM


-- giữ hết tất cả record bên bảng phải, nếu bên không có bên trái map với bên phải thì bên trái sẽ null
SELECT * FROM dbo.BOMON  RIGHT OUTER JOIN dbo.GIAOVIEN ON BOMON.MABM = dbo.GIAOVIEN.MABM