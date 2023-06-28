--Cach 1

CREATE TABLE TestPrimaryKey1
(
    ID INT PRIMARY KEY IDENTITY(1, 1),
    Name NVARCHAR(100)
        DEFAULT N'Nguyen Duc Bao'
);
GO


--cach 2
ALTER TABLE dbo.TestPrimaryKey1 ADD PRIMARY KEY (ID);

--cach 3
CREATE TABLE TestPrimaryKey2
(
    ID INT NOT NULL,
    Name NVARCHAR(100)
        DEFAULT N'Nguyen Duc Bao',
    PRIMARY KEY (ID)
);


--cach4 taoj primary key + dat ten
CREATE TABLE TestPrimaryKey4
(
    ID INT,
    Name NVARCHAR(100)
        DEFAULT N'Nguyen Duc Bao',
    CONSTRAINT PK_Test4
        PRIMARY KEY (ID) --dat ten cho key de xoa key

);

--cach 5
-- tao primary key sau khi tao bang va dat ten cho key do
ALTER TABLE dbo.TestPrimaryKey4 ADD CONSTRAINT PK_Test4 PRIMARY KEY (ID);


-- khoas chinhs bao gom 2 truong
CREATE TABLE CombinePrimaryKey
(
    ID1 INT,
    ID2 INT,
    Name NVARCHAR(100)
        DEFAULT N'Nguyen Duc Bao',
    CONSTRAINT PK_Combine
        PRIMARY KEY (
                        ID1,
                        ID2
                    )
);

CREATE TABLE TripPrimarykey
(
    ID1 INT,
    ID2 INT,
	ID3 INT,
    Name NVARCHAR(100)
        DEFAULT N'Nguyen Duc Bao',
    CONSTRAINT PK_TripPrimaryKey
        PRIMARY KEY (
                        ID1,
                        ID2,
						ID3
                    )
);