/* 

Problem Title: Occupations
Problem Url: https://www.hackerrank.com/challenges/occupations/problem

*/


SELECT MIN(CASE WHEN OCCUPATION = 'Doctor' THEN Name END) AS Doctor,
       MIN(CASE WHEN OCCUPATION = 'Professor' THEN Name END) AS Professor,
       MIN(CASE WHEN OCCUPATION = 'Singer' THEN Name END) AS Singer,
       MIN(CASE WHEN OCCUPATION = 'Actor' THEN Name END) AS Actor
FROM (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) AS RowNumber
  FROM OCCUPATIONS
) AS Temp
GROUP BY RowNumber;
