select 
  customer_id 
from 
  (
    select 
      customer_id, 
      count(distinct product_key) as p 
    from 
      Customer 
    group by 
      customer_id
  ) as q1 
where 
  p = (
    select 
      count(*) 
    from 
      Product as ps
  );
