/* 

Problem Title: Average Population of Each Continent
Problem Url: https://www.hackerrank.com/challenges/average-population-of-each-continent

*/


SELECT country.continent,
       AVG(city.population)
FROM   city
JOIN country ON city.countrycode = country.code
GROUP  BY country.continent 