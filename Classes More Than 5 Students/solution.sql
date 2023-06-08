select 
  class 
from 
  (
    select 
      class, 
      count(student) as students 
    from 
      Courses 
    group by 
      class
  ) as q1 
where 
  students >= 5;
