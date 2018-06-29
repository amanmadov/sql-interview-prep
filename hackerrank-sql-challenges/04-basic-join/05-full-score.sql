/* 

Problem Title: Top Competitors
Problem Url: https://www.hackerrank.com/challenges/full-score

*/


SELECT h.hacker_id, h.NAME
FROM   submissions s
       INNER JOIN challenges c ON s.challenge_id = c.challenge_id
       INNER JOIN difficulty d ON c.difficulty_level = d.difficulty_level
       INNER JOIN hackers h ON s.hacker_id = h.hacker_id AND s.score = d.score
GROUP  BY h.NAME, h.hacker_id
HAVING COUNT(h.hacker_id) > 1
ORDER  BY COUNT(h.hacker_id) D