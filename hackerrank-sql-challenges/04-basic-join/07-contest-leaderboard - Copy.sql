/* 

Problem Title: Contest Leaderboard
Problem Url: https://www.hackerrank.com/challenges/contest-leaderboard

*/


SELECT col1, col2, SUM(Score) AS TotalScore
FROM
    (
        SELECT S.hacker_id AS col1, H.name AS col2, S.challenge_id, MAX(S.score) AS Score
        FROM SUBMISSIONS S
        JOIN HACKERS H ON S.hacker_id = H.hacker_id
        GROUP BY s.hacker_id, H.name, S.challenge_id
    ) AS subQuery
GROUP BY col1, col2
HAVING SUM(Score) > 0
ORDER BY TotalScore DESC, col1 
