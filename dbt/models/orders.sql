select
    customer_id,
    namn  -- intentional typo: should be 'name'
from {{ ref('customers') }}