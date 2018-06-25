/* 

Problem Title: Weather Observation Station 14
Problem Url: https://www.hackerrank.com/challenges/weather-observation-station-14

*/


SELECT Cast(Max(lat_n) AS NUMERIC(36, 4))
FROM   station
WHERE  lat_n < 137.2345 