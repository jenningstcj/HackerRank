--https://www.hackerrank.com/challenges/weather-observation-station-18
SELECT ROUND(ABS(A - C) + ABS(B - D), 4)
FROM (
		SELECT MAX(LAT_N) AS A, MIN(LAT_N) AS B , MAX(LONG_W) AS C , MIN(LONG_W) AS D
		FROM STATION
	) ;
