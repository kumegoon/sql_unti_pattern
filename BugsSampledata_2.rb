UPDATE bugs SET
  date_reported = DATE_ADD('2010-01-01', INTERVAL 365*9*rand() DAY),
  reopred_by = "momo"
;

insert into bugs (bug_id, date_reported, reported_by) values
(
  rand(100.10000),
  DATE_ADD('2010-01-01', INTERVAL 365*9*rand() DAY),
  4
);

insert into bugsproducts (bug_id, product_id) values
(
  ROUND(1+RAND()*90),
  ROUND(1+RAND()*90)
);

https://deaimobi.com/mbnk-340/