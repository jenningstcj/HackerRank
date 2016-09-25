--https://www.hackerrank.com/challenges/weather-observation-station-4
select ((select count(*) from station) - (select count(*) from (select distinct city from station))) from dual;
