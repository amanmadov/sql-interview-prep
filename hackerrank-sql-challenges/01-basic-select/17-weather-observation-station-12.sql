/* 

Problem Title: Weather Observation Station 12
Problem Url: https://www.hackerrank.com/challenges/weather-observation-station-12

*/


SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY NOT LIKE '[aeiou]%' AND CITY NOT LIKE '%[aeiou]'