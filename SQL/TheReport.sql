--https://www.hackerrank.com/challenges/the-report
select case when g.grade < 8 then 'NULL'
			when g.grade >= 8 then  s.name
       end, 
        g.grade, 
        s.marks from students s
left outer join grades g on s.marks between g.min_mark and g.max_mark
order by g.grade desc, s.name asc;
