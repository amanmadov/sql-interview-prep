/* 

Problem Title: Weather Observation Station 15
Problem Url: https://www.hackerrank.com/challenges/weather-observation-station-15

*/


SELECT Cast(long_w AS NUMERIC(36, 4))
FROM   station
WHERE  lat_n = (
                    SELECT Max(lat_n)
                    FROM   station
                    WHERE  lat_n < 137.2345
                ) 