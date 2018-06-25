/* 

Problem Title: Weather Observation Station 18
Problem Url: https://www.hackerrank.com/challenges/weather-observation-station-18

*/


SELECT Abs(Cast(( Min(lat_n) - Max(lat_n) ) + ( Min(long_w) - Max(long_w) ) AS NUMERIC (36, 4)))
FROM   station 