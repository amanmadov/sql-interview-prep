/* 

Problem Title: Weather Observation Station 2
Problem Url: https://www.hackerrank.com/challenges/weather-observation-station-2

*/


SELECT Cast(Round(Sum(lat_n), 2) AS NUMERIC(36, 2)),
       Cast(Round(Sum(long_w), 2) AS NUMERIC(36, 2))
FROM   station 