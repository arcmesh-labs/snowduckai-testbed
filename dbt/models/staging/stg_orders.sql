select
    1 as order_id,
    1 as customer_id,
    1 as product_id,
    2 as quantity,
    '2024-01-15' as order_date
union all select 2, 2, 3, 1, '2024-01-16'
union all select 3, 1, 2, 4, '2024-01-17'
union all select 4, 3, 1, 1, '2024-01-18'