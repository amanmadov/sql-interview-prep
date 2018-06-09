/*

Problem Title: Weather Observation Station 5
Problem Url: https://www.hackerrank.com/challenges/weather-observation-station-5/problem

*/


SELECT CITY, LEN(CITY) 
FROM STATION 
WHERE LEN(CITY) = (SELECT MAX(LEN(CITY)) FROM STATION);

SELECT TOP 1 CITY, LEN(CITY) 
FROM STATION 
WHERE LEN(CITY) = (SELECT MIN(LEN(CITY)) FROM STATION)
ORDER BY CITY;
