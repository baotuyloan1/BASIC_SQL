USE SchoolManagement
GO


-- tạo ra bảng mới từ dữ liệu có sẵn - thường dùng để backup, nếu bảng đã tồn tại sẽ bị báo lỗi khi dùng lệnh này
-- There is already an object named 'TableB' in the database.

--tạo bảng mới lấy hết dữ liệu của bảng GV đưa vào bảng mới có tên là TableA => bảng này có các record tương ứng như bảng GV
SELECT * INTO TableA FROM dbo.GIAOVIEN

-- tạo ra bảng tableB mới. Có 1 cột dữ liệu là HoTen tương ứng như bảng GV
SELECT HoTen INTO TableB FROM dbo.GIAOVIEN

SELECT * FROM dbo.TableB

-- Tạo ra bảng tableC với GV  có lương > 2000
SELECT * INTO TableC FROM dbo.GIAOVIEN WHERE dbo.GIAOVIEN.LUONG > 2000

-- tạo ra 1 bảng mới backup từ nhiều bảng
SELECT dbo.NGUOITHAN.TEN AS 'Ten Nguoi Than', dbo.GIAOVIEN.HOTEN AS 'Ten giao vien' INTO GiaoVienAndNguoiThan FROM dbo.GIAOVIEN INNER JOIN dbo.NGUOITHAN ON NGUOITHAN.MAGV = GIAOVIEN.MAGV


-- tạo ra 1 bảng mới GVBC y change cấu trúng nhưng không có dữ liệu
SELECT * INTO GVBK FROM dbo.GIAOVIEN WHERE 1=0