--https://www.hackerrank.com/challenges/binary-search-tree-1
select b.n,
case when b.p is null then 'Root'
    when (select count(*) from bst where b.n in (select t.p from bst t)) = 0 then 'Leaf'
    else 'Inner'
end
from bst b
order by n;
