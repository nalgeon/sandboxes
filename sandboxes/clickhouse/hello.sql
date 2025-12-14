create table data (id UInt32, x UInt32)
engine MergeTree order by id sample by id
as

select number+1 as id, randUniform(1, 100) as x
from numbers(10000);

select
  avg(x) as "avg",
  round(quantile(0.95)(x), 2) as p95
from data
sample 0.1;
