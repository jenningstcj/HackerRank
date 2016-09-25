--https://www.hackerrank.com/challenges/weather-observation-station-19
SELECT to_char(round(sqrt(power((C-A), 2) + power((D-B),2)), 4), '00.0000')
FROM (
		SELECT min(LAT_N) AS A, max(LAT_N) AS B , min(LONG_W) AS C , max(LONG_W) AS D
		FROM STATION
	) ;
