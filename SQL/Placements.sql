--https://www.hackerrank.com/challenges/placements
select x.name from (
select s.name, p.salary, (select pa.salary from packages pa where pa.id = f.friend_id ) as friendsalary from students s
left outer join friends f on f.id = s.id
left outer join packages p on p.id = s.id) x
where x.friendsalary > x.salary
order by x.friendsalary;
