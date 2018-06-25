/* 

Problem Title: Weather Observation Station 13
Problem Url: https://www.hackerrank.com/challenges/weather-observation-station-13

*/


SELECT Cast(Sum(lat_n) AS NUMERIC(36, 4))
FROM   station
WHERE  lat_n BETWEEN 38.7880 AND 137.2345 