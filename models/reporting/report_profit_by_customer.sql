select 
customername,
segment,
country,
sum(orderprofit) as profit
from {{ ref('order_stage') }}
group by 
customername,
segment,
country