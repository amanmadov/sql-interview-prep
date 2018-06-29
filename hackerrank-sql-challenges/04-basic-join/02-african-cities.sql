/* 

Problem Title: African Cities
Problem Url: https://www.hackerrank.com/challenges/african-cities

*/


SELECT city.NAME
FROM   city
       JOIN country ON city.countrycode = country.code
WHERE  country.continent = 'Africa' 