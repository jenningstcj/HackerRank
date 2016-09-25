--https://www.hackerrank.com/challenges/what-type-of-triangle
select case 
when a + b <= c or c + b <= a or a + c <= b then 'Not A Triangle'
when a = b and a = c and b = c then 'Equilateral' 
when a = b or b = c or a = c then 'Isosceles'
when a != b and a != c and b != c then 'Scalene'
end from triangles;
