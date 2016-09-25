--https://www.hackerrank.com/challenges/asian-population
select sum(c.population) from city c
left outer join country co on co.code = c.countrycode
where co.continent = 'Asia';
