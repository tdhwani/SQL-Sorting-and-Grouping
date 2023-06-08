select 
  max(num) as num 
from 
  (
    select 
      num, 
      count(num) as cnt 
    from 
      MyNumbers 
    group by 
      num
  ) as q1 
where 
  cnt = 1;
