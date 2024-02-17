create database F1;

use F1;

-- TABLE
create table student (
	id int primary key,
    name varchar(20),
    age int ,
    grade varchar(3),
    marks int,
    city varchar(20)
);

insert into student (id, name ,age ,grade ,marks ,city) values
(101, "Zain", 15 , "A+1", 95 , "karachi" ),
(102, "Umar", 92 , "D", 42 , "Islamabad" ),
(103, "Ali", 32 , "B", 62 , "Lahore" ),
(104, "Jaffar", 50 , "A", 85 , "Peshawar" ),
(105, "Zeshaan", 62 , "C", 56 , "Multan" );

select * from student;
-- CLUSING
-- Where Kahaan

select * from student where city = "Karachi";
select * from student where name = "zain";
select * from student where city in ("Karachi", "Islamabad");
select * from student where age between 30 and 70;
select * from student where age = 50 and marks = 85;
select * from student where age = 62 and name = "zeshaan";
select * from student where age = 62 or name = "Jaffar";
select distinct city from student;

                             