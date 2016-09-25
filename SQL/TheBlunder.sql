--https://www.hackerrank.com/challenges/the-blunder
select round((avg(salary) - avg(replace(salary, 0))) + 0.5, 0) from employees;
