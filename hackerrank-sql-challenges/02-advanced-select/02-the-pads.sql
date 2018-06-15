/* 

Problem Title: The PADS
Problem Url: https://www.hackerrank.com/challenges/the-pads

*/


SELECT NAME + "(" + LEFT(occupation, 1) + ")"
FROM   occupations
ORDER  BY NAME;

SELECT "there are a total of"
       + CAST(COUNT(occupation) AS VARCHAR) + ""
       + LOWER(occupation) + "s." AS CNT
FROM   occupations
GROUP  BY occupation
ORDER  BY cnt, occupation;