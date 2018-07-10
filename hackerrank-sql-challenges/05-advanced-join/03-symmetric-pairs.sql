/* 

Problem Title: Symmetric Pairs
Problem Url: https://www.hackerrank.com/challenges/symmetric-pairs

*/


SELECT F1.x, F1.y
FROM   functions F1
JOIN functions F2 ON F1.x = F2.y AND F1.y = F2.x
GROUP  BY F1.x, F1.y
HAVING Count(F1.x) > 1 OR F1.x < F1.y
ORDER  BY F1.x; 