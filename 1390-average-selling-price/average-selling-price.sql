# Write your MySQL query statement below
select 
a.product_id,  
Coalesce(round(sum(b.units*a.price) / sum(b.units)  ,2 ),0) as average_price
from prices a 
left join unitsSold b on a.start_date <= b.purchase_date and 
b.purchase_date <= a.end_date and a.product_id = b.product_id 
group by a.product_id 
order by a.product_id;