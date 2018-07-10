/* 

Problem Title: SQL Project Planning
Problem Url: https://www.hackerrank.com/challenges/sql-projects

*/


SELECT a.start_date, MIN(b.end_date) AS end_date
FROM 
    (SELECT start_date FROM projects
     WHERE start_date NOT IN (SELECT end_date FROM projects)) AS a
    INNER JOIN 
    (SELECT end_date FROM projects
     WHERE end_date NOT IN (SELECT start_date FROM projects)) AS b
    ON a.start_date < b.end_date
GROUP BY a.start_date
ORDER BY DATEDIFF(day, a.start_date, MIN(b.end_date)), a.start_date;