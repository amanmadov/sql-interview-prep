/* 

Problem Title: Weather Observation Station 20
Problem Url: https://www.hackerrank.com/challenges/weather-observation-station-20

*/


SELECT ( Cast((SELECT ( (SELECT Max(lat_n)
                         FROM   (SELECT TOP 50 PERCENT lat_n
                                 FROM   station
                                 ORDER  BY lat_n) AS SHALF)
                        + (SELECT Min(lat_n)
                           FROM   (SELECT TOP 50 PERCENT lat_n
                                   FROM   station
                                   ORDER  BY lat_n DESC) AS FHALF) ) / 2) AS
                       NUMERIC (36, 4)) ) AS Median 