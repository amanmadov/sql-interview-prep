/* 

Problem Title: Print Prime Numbers
Problem Url: https://www.hackerrank.com/challenges/print-prime-numbers

*/


DECLARE @i INT=3
DECLARE @j INT=3
DECLARE @result VARCHAR(MAX)='2'

WHILE( @i < 1000 )
  BEGIN
      DECLARE @isPrime BIT=1

      SET @j=3;

      WHILE( @j < @i )
        BEGIN
            IF( @i%@j = 0
                AND @i <> @j )
              BEGIN
                  SET @isPrime=0;

                  BREAK;
              END

            SET @j=@j + 2;
        END

      IF( @isPrime = 1 )
        BEGIN
            SET @result=@result + '&' + Cast(@i AS VARCHAR(10))
        END
      ELSE
        BEGIN
            SET @i=@i + 2;

            CONTINUE;
        END

      SET @i=@i + 2;
  END

PRINT( @result ) 