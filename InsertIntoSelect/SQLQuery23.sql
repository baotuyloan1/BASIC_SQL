USE SchoolManagement
GO


--tạo ra bảng, nhưng bảng đó không có các thuộc tính constant
SELECT * INTO CloneGV FROM dbo.GIAOVIEN WHERE 1=0;

-- insert into select -> copy dữ liệu vào 1 bảng đã """"tồn tại"""", insert database từ bảng GIAOVIEN, mỗi lần gọi là nó cứ insert thêm vào,
INSERT INTO dbo.CloneGV SELECT * FROM dbo.GIAOVIEN
SELECT * FROM dbo.CloneGV