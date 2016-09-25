--https://www.hackerrank.com/challenges/weather-observation-station-17
select * from (
select round(long_w, 4) from station
where lat_n > 38.7780
order by lat_n asc) where rownum = 1;
