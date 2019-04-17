SELECT * FROM customer where name like 'A%';
select * from customer where name like 'A%' 
						  or name like 'D%';
select * from customer where name like 'A%' 
						   and State = 'NJ';
-- Use a regular expression to return all records with names starting with a vowel
select * from customer where name REGEXP"^[aeiou].*";

-- insert statement;
select * from customer;
insert into customer values (13, 'Very Good Construction Company', 'Pawnee', 'IN', 525600, 1);

insert into customer (Name, City, State, Sales, Active) values ('MOMCorp', 'New New York', 'NY', 276552145, 1);

-- update statement
update customer set name = 'Pearl', city = 'Nashville', state = 'TN' where id = 15;

-- delete statement
delete from customer where id = 14;

-- select using 'in' clause
select * from customer where id in(10,11,12);

