/* 

Problem Title: Population Census
Problem Url: https://www.hackerrank.com/challenges/asian-population

*/


SELECT Sum(city.population) AS populationSum
FROM   city
       JOIN country ON city.countrycode = country.code
WHERE  country.continent = 'Asia' 