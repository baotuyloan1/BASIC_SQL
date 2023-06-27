USE SQl_DB_UI;
GO

CREATE TABLE Test
(
    MaSo INT,
    Ten NVARCHAR(20),
    NgaySinh DATE,
    Nam BIT,
    DiaChi CHAR(20),
    TienLuong FLOAT
);

INSERT dbo.Test
VALUES
(   13,            -- MaSo - int
    N'Nguyễn',     -- Ten - nvarchar(10)
    '20000407',    --yyyymmdd
    1,             -- Nam - bit
    'Địa chỉ nè3', -- DiaChi - char(20)
    10000          -- TienLuong - float
    );
INSERT HocSinh
VALUES
(N'5', N'Nguyen Duc Bao', GETDATE());
-- auto convert string to data không cần tuân theo format năm-tháng-ngày, chỉ cần namthangngay
INSERT HocSinh
VALUES
(N'5', N'Nguyen Duc Bao', '20000407');


DELETE dbo.Test
WHERE MaSo = 12;

UPDATE dbo.Test
SET TienLuong = 1100
WHERE MaSo = 13;

INSERT dbo.Test
(
    MaSo,
    TienLuong
)
VALUES
(   1, -- MaSo - int

    1  -- TienLuong - float
    );

UPDATE dbo.Test SET TienLuong = 1 , DiaChi = 'Da Nang' WHERE MaSo =  1