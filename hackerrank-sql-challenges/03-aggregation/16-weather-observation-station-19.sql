/* 

Problem Title: Weather Observation Station 19
Problem Url: https://www.hackerrank.com/challenges/weather-observation-station-19

*/


SELECT Cast(Sqrt(
                    (( Min(lat_n) - Max(lat_n) ) * ( Min(lat_n) - Max(lat_n) ) ) +
                    (( Min(long_w) - Max(long_w) ) * ( Min(long_w) - Max(long_w) ))
                ) AS NUMERIC (36, 4))
FROM   station 