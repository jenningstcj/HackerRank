--https://www.hackerrank.com/challenges/african-cities
select c.name from city c
left outer join country co on co.code = c.countrycode
where co.continent = 'Africa';
