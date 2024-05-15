select 
customername,
segment,
country,
sum(orderprofit)
from {{ ref('order_stage') }}
group by 
customername,
segment,
country