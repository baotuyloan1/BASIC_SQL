USE SchoolManagement
GO

-- xuất ra ds tên bộ môn và số lượng giáo viên của bộ môn đó
SELECT bm.TENBM, COUNT(bm.TENBM) AS 'Số giáo viên' FROM dbo.BOMON bm INNER JOIN dbo.GIAOVIEN gv ON gv.MABM = bm.MABM GROUP BY bm.TENBM HAVING COUNT(bm.TENBM) >2

/*
Agreeate Function

	AVG() returns the verage value
	COUNT() returns the number of rows
	FIRST() returns the first value
	LAST() returns the last value
	MAX() returns the largest value
	MIN() returns the smalles values
	ROUND() rounds a numeric field to the number of decimals speified
	SUM() returns the sum
*/


/*
 string function

 CHARINDEX Searches an expression in a string expression and returns its starting position if found.
 CONCAT()
 LEFT() 
 RIGHT()
 LEN()/ LENGTH() returns a length of the value in a text field
 LOWER() / LCASE() converts character data to lower case
 LTRIM() loại bỏ các khoảng trắng phía bên trái của chuỗi
 SUBSTRING() / MID () EXtract characters from a text field
 PAXINDEX() 
 REPLACE()
 RTRIM() loại bỏ khoảng trắng bên phải
 UPPER() / UCASE()  converts character data to upper case.

*/