create database F1;

use F1;

create table student (
	id int,
    name varchar (10),
    age int,
    marks int,
    grade varchar (3),
    city varchar (15)
);

insert into student (id , name , age , marks , grade , city) values 
(101 , "Jan" , 20 , 98 , "A+1" , "Karachi"),
(102 , "Shan" , 30 , 86 , "A" , "Quetta"),
(103 , "Maan" , 50 , 72 , "B" , "Multan"),
(104 , "Khan" , 36 , 58 , "C" , "Islamabad"),
(105 , "Naran" , 85 , 42 , "D" , "Lahore");
select * from student;
-- Clusing
-- Where
select * from student where city = "Karachi";
select * from student where name = "Khan";
select * from student where marks = 72 or name =  "Naran"; 
select * from student where marks = 72 and city =  "Multan"; 	

-- Agregate Function
select * from student;
select min(marks) from student;
select max(marks) from student;
select count(city) from student;
select min(name) from student;
select max(name) from student;
select avg(age) from student;

-- Update
select * from student;
set sql_safe_updates =0;
update student
set marks = 50 where id = 102; 
update student
set grade = "C" where id = 102;
update student
set marks = 50+7 where id = 102;

