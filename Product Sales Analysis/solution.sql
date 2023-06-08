select 
  q3.product_id, 
  q3.year as first_year, 
  q3.quantity, 
  q3.price 
from 
  (
    select 
      q1.* 
    from 
      Sales as q1 
      inner join (
        select 
          product_id, 
          min(year) as minyear 
        from 
          Sales 
        group by 
          product_id
      ) as q2 on q1.product_id = q2.product_id 
      and q1.year = q2.minyear
  ) as q3;
