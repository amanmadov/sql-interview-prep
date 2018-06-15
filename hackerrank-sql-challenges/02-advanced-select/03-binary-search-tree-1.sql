/* 

Problem Title: Binary Tree Nodes
Problem Url: https://www.hackerrank.com/challenges/binary-search-tree-1

*/


SELECT N,
CASE 
    WHEN P IS NULL Then 'Root'
    WHEN N IN (SELECT DISTINCT P FROM BST WHERE P<>(SELECT N FROM BST WHERE P IS NULL)) 
    THEN 'Inner'
    ELSE 'Leaf'
END    
FROM BST
ORDER BY N