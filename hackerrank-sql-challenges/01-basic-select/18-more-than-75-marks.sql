/* 

Problem Title: Higher Than 75 Marks
Problem Url: https://www.hackerrank.com/challenges/more-than-75-marks

*/


SELECT Name 
FROM STUDENTS 
WHERE Marks > 75
ORDER BY RIGHT(Name,3),ID