/* 

Problem Title: Weather Observation Station 9
Problem Url: https://www.hackerrank.com/challenges/weather-observation-station-9

*/



SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY NOT LIKE '[aeiou]%' 