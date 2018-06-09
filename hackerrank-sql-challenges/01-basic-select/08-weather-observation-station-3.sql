/*

Problem Title: Weather Observation Station 3
Problem Url: https://www.hackerrank.com/challenges/weather-observation-station-3/problem

*/

SELECT DISTINCT CITY 
FROM STATION 
WHERE ID % 2 = 0;