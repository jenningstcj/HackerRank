--https://www.hackerrank.com/challenges/the-pads
select name || '('||substr(occupation, 1,1)||')' from occupations
order by name;

select 'There are total ' || count(*) || ' ' || lower(occupation) || 's.' from occupations
group by occupation
order by count(*), occupation;
