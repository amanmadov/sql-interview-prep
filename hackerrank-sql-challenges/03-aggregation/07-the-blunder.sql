/* 

Problem Title: The Blunder
Problem Url: https://www.hackerrank.com/challenges/the-blunder

*/


SELECT Avg(salary) - Avg(CAST(REPLACE(CAST(salary AS VARCHAR(100)), '0', '') AS INT)) + 1
FROM employees 