select 
o.orderId ,
o.orderdate,
o.shipdate,
o.shipmode, 
o.ordersellingprice - o.ordercostprice AS orderprofit ,
c.customername,
c.segment,
c.country,
p.productId,
p.category,
p.productname,
p.subcategory


from {{ ref('raw_orders') }} as o

left join {{ ref('raw_customers') }} as c
on o.customerid = c.customerid

left join {{ ref('raw_products') }} as p
on o.productId = p.productId
