USE SQl_DB_UI;
GO

CREATE TABLE BoMon
(
    MaBM CHAR(10) PRIMARY KEY,
    Name NVARCHAR(100)
        DEFAULT N'Tên Bộ Môn'
);

GO

CREATE TABLE Lop
(
    MaLop CHAR(10) NOT NULL,
    Name NVARCHAR(100)
        DEFAULT N'Tên lớp',
    CONSTRAINT PK_Lop
        PRIMARY KEY (MaLop)
);

CREATE TABLE GiaoVien
(
    MaGV CHAR(10),
    Name NVARCHAR(100),
    DiaChia NVARCHAR(100),
    NgaySinh DATE,
    Sex BIT,
    MaBM CHAR(10)
        FOREIGN KEY REFERENCES dbo.BoMon (MaBM),
    MaBM1 CHAR(10),
    CONSTRAINT FK_GiaoVIen
        FOREIGN KEY (MaBM1)
        REFERENCES dbo.BoMon (MaBM)
);
GO


CREATE TABLE HocSinh
(
    MaHS CHAR(10),
    Name NVARCHAR(100),
    MaLop CHAR(10)
);

ALTER TABLE dbo.HocSinh ADD CONSTRAINT PK_HocSinh PRIMARY KEY (MaHS);

ALTER TABLE dbo.HocSinh
ADD CONSTRAINT FK_HocSinh
    FOREIGN KEY (MaLop)
    REFERENCES dbo.Lop (MaLop);

-- ALTER TABLE dbo.HocSinh DROP CONSTRAINT FK_HocSinh;

INSERT dbo.BoMon
(
    MaBM,
    Name
)
VALUES
(   'MB1',      -- MaBM - char(10)
    N'Bộ môn 1' -- Name - nvarchar(100)
    );

INSERT dbo.BoMon
(
    MaBM,
    Name
)
VALUES
(   'MB2',      -- MaBM - char(10)
    N'Bộ môn 2' -- Name - nvarchar(100)
    );

INSERT dbo.BoMon
(
    MaBM,
    Name
)
VALUES
(   'MB3',      -- MaBM - char(10)
    N'Bộ môn 3' -- Name - nvarchar(100)
    );
INSERT INTO dbo.GiaoVien
(
    MaGV,
    Name,
	MaBM
)
VALUES
(   'GV05', -- MaGV - nvarchar(10)
    N'Gv1',  -- Name - nvarchar(100)
    'mb1')

	INSERT INTO dbo.GiaoVien
(
    MaGV,
    Name,
	MaBM
)
VALUES
(   'GV04', -- MaGV - nvarchar(10)
    N'Gv2',  -- Name - nvarchar(100)
    'MB1' )

