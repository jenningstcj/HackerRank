--https://www.hackerrank.com/challenges/population-density-difference
select (select max(population) from city) - (select min(population) from city) from dual;
