select 
productId, 
productname, 
category, subcategory, 
sum(orderprofit) as profit
 from {{ ref('order_stage') }}
 group by productId, productname, category, subcategory