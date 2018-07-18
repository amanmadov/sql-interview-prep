/* 

Problem Title: Draw The Triangle 2
Problem Url: https://www.hackerrank.com/challenges/draw-the-triangle-2

*/


DECLARE @sayi INT=20
DECLARE @i INT,
        @j INT

SELECT @i = 0,
       @j = 0

DECLARE @char VARCHAR(MAX)='';

WHILE @i < @sayi
  BEGIN
      IF( @i = 0 )
        SET @char=@char;
      ELSE
        SET @char=@char + Char(10) + Char(13)

      SET @j=0

      WHILE @j < @i + 1
        BEGIN
            SET @char=@char + '* ';
            SET @j = @j + 1;
        END

      SET @i = @i + 1;
  END

PRINT @char 