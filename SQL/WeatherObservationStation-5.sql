--https://www.hackerrank.com/challenges/weather-observation-station-5
select city, length(city) from (select *
from station
order by length(city) asc, city asc)
where rownum = 1
union all
select city, length(city) from (select *
from station
order by length(city) desc, city asc)
where rownum = 1;
