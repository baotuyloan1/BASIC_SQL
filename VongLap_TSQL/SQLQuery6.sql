USE SchoolManagement
GO
DECLARE @i INT = 0

WHILE(@i < 10000)
BEGIN
	INSERT dbo.TestCheck
	(
	    Luong
	)
	VALUES
	(@i -- Luong - int
	    )
	SET @i += 1
END

