select
    customer_id,
    name  -- intentional typo: should be 'name'
from {{ ref('customers') }}