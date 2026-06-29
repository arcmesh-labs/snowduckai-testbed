select
    o.order_id,
    o.order_date,
    c.customer_id,
    c.full_name,
    c.city,
    p.product_id,
    p.product_name,
    p.unit_price,
    o.quantity,
    o.quantity * p.unit_price as line_total
from {{ ref('stg_orders') }} o
left join {{ ref('stg_customers') }} c on o.customer_id = c.customer_id
left join {{ ref('stg_products') }} p on o.product_id = p.product_id