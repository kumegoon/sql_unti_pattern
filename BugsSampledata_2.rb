UPDATE bugs SET
  date_reported = DATE_ADD('2010-01-01', INTERVAL 365*9*rand() DAY),
  reopred_by = "momo"
;

22:57:16	insert into bugs values(   DATE_ADD('2010-01-01', INTERVAL 365*9*rand() DAY),"momo")	Error Code: 1136. Column count doesn't match value count at row 1	0.0031 sec
22:57:47	insert into bugs values(   9,DATE_ADD('2010-01-01', INTERVAL 365*9*rand() DAY),"momo")	Error Code: 1366. Incorrect integer value: 'momo' for column 'reported_by' at row 1	0.00048 sec
22:58:28	insert into bugs values(   9,DATE_ADD('2010-01-01', INTERVAL 365*9*rand() DAY), 'momo')	Error Code: 1366. Incorrect integer value: 'momo' for column 'reported_by' at row 1	0.00038 sec
22:59:38	insert into bugs values(   9,DATE_ADD('2010-01-01', INTERVAL 365*9*rand() DAY), 1)	Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`sql_unti`.`bugs`, CONSTRAINT `bugs_ibfk_1` FOREIGN KEY (`reported_by`) REFERENCES `accounts` (`account_id`))	0.030 sec
23:00:24	insert into bugs values(   9,DATE_ADD('2010-01-01', INTERVAL 365*9*rand() DAY), 2)	Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`sql_unti`.`bugs`, CONSTRAINT `bugs_ibfk_1` FOREIGN KEY (`reported_by`) REFERENCES `accounts` (`account_id`))	0.049 sec
23:02:56	insert into bugs values(   9,DATE_ADD('2010-01-01', INTERVAL 365*9*rand() DAY), 2)	Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`sql_unti`.`bugs`, CONSTRAINT `bugs_ibfk_1` FOREIGN KEY (`reported_by`) REFERENCES `accounts` (`account_id`))	0.040 sec
23:08:04	insert into bugs (bug_id, date_reported, reported_by) values (   rand(),   DATE_ADD('2010-01-01', INTERVAL 365*9*rand() DAY),   2 )	Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`sql_unti`.`bugs`, CONSTRAINT `bugs_ibfk_1` FOREIGN KEY (`reported_by`) REFERENCES `accounts` (`account_id`))	0.046 sec
23:11:20	insert into bugs (bug_id, date_reported, reported_by) values (   rand(),   DATE_ADD('2010-01-01', INTERVAL 365*9*rand() DAY),   rand() )	Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`sql_unti`.`bugs`, CONSTRAINT `bugs_ibfk_1` FOREIGN KEY (`reported_by`) REFERENCES `accounts` (`account_id`))	0.046 sec
