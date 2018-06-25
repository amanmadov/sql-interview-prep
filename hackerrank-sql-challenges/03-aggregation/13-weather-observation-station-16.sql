/* 

Problem Title: Weather Observation Station 16
Problem Url: https://www.hackerrank.com/challenges/weather-observation-station-16

*/


SELECT Cast(Min(lat_n) AS NUMERIC(36, 4))
FROM   station
WHERE  lat_n > 38.7780 