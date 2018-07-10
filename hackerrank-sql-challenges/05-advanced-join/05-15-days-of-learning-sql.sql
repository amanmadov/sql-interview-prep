/* 

Problem Title: 15 Days of Learning SQL
Problem Url: https://www.hackerrank.com/challenges/15-days-of-learning-sql

*/


WITH dates_hackers AS(
SELECT submission_date, hacker_id, COUNT(*) subs
FROM Submissions
GROUP BY submission_date, hacker_id
),
day1_hackers AS (
SELECT DISTINCT(hacker_id)
FROM Submissions
WHERE submission_date = '2016-03-01'
),
min_max AS (
SELECT hacker_id, MIN(submission_date) first_sub, MAX(submission_date) last_sub, 
DATEDIFF(day, MIN(submission_date), MAX(submission_date)) diff
FROM Submissions
GROUP BY hacker_id
),
cumuCountLag AS (
SELECT hacker_id, submission_date, LAG(submission_date) OVER(PARTITION BY hacker_id ORDER BY submission_date) prevDay, 
COUNT(*) OVER(PARTITION BY hacker_id ORDER BY submission_date) cumuCount
FROM dates_hackers
),
p1_interm AS (
SELECT cumuCountLag.hacker_id, cumuCountLag.submission_date, prevDay, first_sub, cumuCount,
    CASE WHEN (cumuCountLag.hacker_id IN (SELECT * FROM day1_hackers))
    AND (cumuCount = DATEDIFF(day, first_sub, cumuCountLag.submission_date) + 1)
    THEN 1
ELSE 0 END AS partic_till
FROM cumuCountLag
LEFT JOIN  min_max
ON cumuCountLag.hacker_id = min_max.hacker_id
),
p1 AS (
SELECT submission_date, SUM(partic_till) no_hackers_till
FROM p1_interm
GROUP BY submission_date
),
topHackers AS(
SELECT dates_hackers.submission_date, dates_hackers.hacker_id, h.name, dates_hackers.subs, 
RANK() OVER(PARTITION BY dates_hackers.submission_date ORDER BY dates_hackers.subs DESC, 
dates_hackers.hacker_id) AS sRank
FROM dates_hackers
JOIN Hackers h
ON dates_hackers.hacker_id = h.hacker_id
), 
p2 AS (
SELECT submission_date, hacker_id, name
FROM topHackers
WHERE sRank = 1
)

SELECT p1.submission_date, p1.no_hackers_till, p2.hacker_id, p2.name
FROM p1
JOIN p2
ON p1.submission_date = p2.submission_date