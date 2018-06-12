/* 

Problem Title: Weather Observation Station 11
Problem Url: https://www.hackerrank.com/challenges/weather-observation-station-11

*/


SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY NOT LIKE '[aeiou]%[aeiou]'