/* 

Problem Title: Challenges
Problem Url: https://www.hackerrank.com/challenges/challenges

*/


SELECT c.hacker_id, h.name, COUNT(c.challenge_id) AS cnt
FROM Hackers AS h 
JOIN Challenges AS c ON h.hacker_id = c.hacker_id
GROUP BY c.hacker_id, h.name
HAVING COUNT(c.challenge_id) = 
                                (
                                    SELECT COUNT(c1.challenge_id)
                                    FROM Challenges AS c1
                                    GROUP BY c1.hacker_id
                                    ORDER BY COUNT(*) DESC 
                                    OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY
                                ) 
                                OR COUNT(c.challenge_id) NOT IN 
                                (
                                    SELECT COUNT(c2.challenge_id)
                                    FROM Challenges AS c2
                                    WHERE c2.hacker_id <> c.hacker_id
                                    GROUP BY c2.hacker_id
                                )
ORDER BY cnt DESC, c.hacker_id;