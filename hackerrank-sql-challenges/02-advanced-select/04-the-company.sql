/* 

Problem Title: New Companies
Problem Url: https://www.hackerrank.com/challenges/the-company

*/


SELECT company_code,
       founder,
       (
            SELECT COUNT(DISTINCT lead_manager_code)
            FROM   lead_manager
            WHERE  company_code = C.company_code
        ),
       (
            SELECT COUNT(DISTINCT senior_manager_code)
            FROM   senior_manager
            WHERE  company_code = C.company_code
        ),
       (
            SELECT COUNT(DISTINCT manager_code)
            FROM   manager
            WHERE  company_code = C.company_code
        ),
       (
            SELECT COUNT(DISTINCT employee_code)
            FROM   employee
            WHERE  company_code = C.company_code
        )
FROM   company C
ORDER  BY company_code; 