create database color;
use color;

create table dept (
id int primary key,
name varchar (10)
);

create table teacher(
id int primary key,
name varchar (10),
dept_id int,
foreign key (dept_id) references dept (id)
);

select * from dept;

insert into dept(id ,name) values
(801,"ENG"),
(802,"MED"),
(803,"ARTS");

select * from dept;

insert into teacher values
(801,"alex",801),
(802,"henry",802),
(803,"peter",803);

select * from teacher;



create table teacher(
id int primary key,
name varchar (10),
dept_id int,
foreign key (dept_id) references dept (id)
ON UPDATE CASCADE
ON DELETE CASCADE
);
drop table teacher;
drop table dept;
update dept set id=804 where id = 803;

select * from teacher;

-- INNER JOIN
select * from dept inner join teacher on dept_id = teacher.id;

-- ALTER
alter table teacher
add column water varchar(10);

set sql_safe_updates=0;
update teacher set water = "yes";
select * from teacher;

-- ALTER ADD COLUMN
alter table teacher
add column cycle varchar(10);

-- ALTER DROP/DELETE COLUMN
alter table teacher
drop cycle;

-- ALTER RENAME
alter table teacher
change water bike varchar(4);

-- ALTER MODIFY
alter table teacher
modify bike varchar(15);

select * from teacher;