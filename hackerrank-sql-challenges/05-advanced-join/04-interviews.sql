/* 

Problem Title: Interviews
Problem Url: https://www.hackerrank.com/challenges/interviews

*/

SELECT
    c.contest_id, c.hacker_id, c.name,
    COALESCE(SUM(ss.total_submissions), 0) AS t_submissions,
    COALESCE(SUM(ss.total_accepted_submissions), 0) AS t_accepted_submissions,
    COALESCE(SUM(vs.total_views), 0) AS t_views,
    COALESCE(SUM(vs.total_unique_views), 0) AS t_unique_views
FROM
    contests c
    INNER JOIN colleges cl ON c.contest_id = cl.contest_id
    INNER JOIN challenges ch ON cl.college_id = ch.college_id
    LEFT JOIN (
        SELECT challenge_id,
            SUM(total_views) AS total_views,
            SUM(total_unique_views) AS total_unique_views
        FROM view_stats
        GROUP BY challenge_id
    ) vs ON ch.challenge_id = vs.challenge_id
    LEFT JOIN (
        SELECT challenge_id,
            SUM(total_submissions) AS total_submissions,
            SUM(total_accepted_submissions) AS total_accepted_submissions
        FROM submission_stats
        GROUP BY challenge_id
    ) ss ON ch.challenge_id = ss.challenge_id
GROUP BY
    c.contest_id, c.hacker_id, c.name
HAVING
    COALESCE(SUM(ss.total_submissions), 0) + COALESCE(SUM(ss.total_accepted_submissions), 0)
        + COALESCE(SUM(vs.total_views), 0) + COALESCE(SUM(vs.total_unique_views), 0) > 0
ORDER BY
    c.contest_id;