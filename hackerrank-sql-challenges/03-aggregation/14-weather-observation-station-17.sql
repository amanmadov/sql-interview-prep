/* 

Problem Title: Weather Observation Station 17
Problem Url: https://www.hackerrank.com/challenges/weather-observation-station-17

*/


SELECT Cast(long_w AS NUMERIC(36, 4))
FROM   station
WHERE  lat_n = (
                    SELECT Min(lat_n)
                    FROM   station
                    WHERE  lat_n > 38.7780
                ) 