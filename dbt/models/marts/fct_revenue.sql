select
    customer_id,
    full_name,
    city,
    count(order_id) as total_orders,
    sum(line_total) as total_revenue
from {{ ref('int_orders_enriched') }}
group by 1, 2, 3