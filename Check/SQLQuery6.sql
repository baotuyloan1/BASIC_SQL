USE SchoolManagement;
GO



CREATE TABLE TestCheck
(
    ID INT PRIMARY KEY IDENTITY,
    Luong INT CHECK (Luong > 3000
                     AND Luong < 9000
                    )
);

GO

INSERT INTO dbo.TestCheck
(
    Luong
)
VALUES
(8999 -- Luong - int
    );

--cach 2
CREATE TABLE TestCheck(
	ID INT PRIMARY KEY IDENTITY,
	Luong INT CHECK(Luong > 3000 AND luong < 9000) ,
	CHECK (Luong > 3000 AND Luong < 9000)

)

GO


--cach 3
CREATE TABLE TestCheck(
	ID INT PRIMARY KEY IDENTITY,
	Luong INT CHECK(Luong > 3000 AND luong < 9000) ,
	CONSTRAINT CK_luong CHECK (Luong >3000)

)

--cach 4
CREATE TABLE TestCheck(
	ID INT PRIMARY KEY IDENTITY,
	Luong INT ,
	
)

ALTER TABLE dbo.TestCheck ADD CONSTRAINT Ck_Luong CHECK (Luong <10000)
ALTER TABLE dbo.TestCheck ADD CHECK(Luong >10000)