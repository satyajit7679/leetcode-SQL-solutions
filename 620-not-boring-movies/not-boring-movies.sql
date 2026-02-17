# Write your MySQL query statement below
select * from Cinema c 
where c.description != 'boring' 
and mod(c.id,2) = 1 
order by c.rating desc;