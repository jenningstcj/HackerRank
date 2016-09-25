--https://www.hackerrank.com/challenges/average-population-of-each-continent
select co.continent, trunc(avg(c.population), 0) from country co
inner join city c on co.code = c.countrycode
group by co.continent;
