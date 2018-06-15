/* 

Problem Title: Type of Triangle
Problem Url: https://www.hackerrank.com/challenges/what-type-of-triangle

*/


SELECT CASE 
            WHEN a <= 0 OR b <= 0 OR c <= 0 THEN 'Not A Triangle'
            WHEN a = b AND b = c THEN 'Equilateral'
            WHEN a + b <= c OR a + c <= b OR b + c <= a THEN 'Not A Triangle'
            WHEN a = b OR b = c OR c = a THEN 'Isosceles'
            ELSE 'Scalene'
       END AS TypeOfTriangle
FROM triangles;
