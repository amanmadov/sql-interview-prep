/* 

Problem Title: Top Earners
Problem Url: https://www.hackerrank.com/challenges/earnings-of-employees

*/


SELECT months * salary AS Earning,
       COUNT(*)
FROM   employee
WHERE  ( months * salary ) = (SELECT Max(months * salary) FROM employee)
GROUP  BY months * salary 