--https://www.hackerrank.com/challenges/weather-observation-station-8
select distinct city from station
where (city like 'A%'
or city like 'E%'
or city like 'I%'
or city like 'O%'
or city like 'U%')
and 
(city like '%a'
or city like '%e'
or city like '%i'
or city like '%o'
or city like '%u');