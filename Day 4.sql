create database F11;

use F11;

create table student(
	id int primary key,
    name varchar(10),
    age int check (age >18),
    marks int,
    garde varchar(3),
    city varchar(15) default "Karachi"
);

insert into student(id , name , age, marks, garde , city) values
(101, "Zain", 29 , 67 , "B" , default),
(102, "Kasim", 24 , 82 , "A" , "Hyd"),
(103, "Asim", 84 , 45 , "D" , "Multan"),
(104, "Jasim", 55 , 72 , "B" , "Lahore"),
(105, "Hasim", 68 , 55 , "C" , "Islamabad");

select * from student;

-- CLUASING
-- WHERE
select * from student where age = 55;
select * from student where age between 20 and 70;
select * from student where city in ("Hyd" , "Karachi" , "Mumbai") and garde = "A";


-- Agregate Function
select min(age) from student;
select max(age) from student;

-- GROUP BY
select id , name , age from student group by id , name , age ;


-- ORDER BY
select * from student order by city ASC;
select * from student order by city DESC;

select * from student order by age ASC;
select * from student order by age DESC;

-- Update 
select * from student;
set sql_safe_updates =0;
update student
set marks = marks+10;

-- HAVING CLAUSE
select name , marks , garde from student group by name , marks , garde having max(age>40);

-- GENERAL RULE
select name , marks , garde from student where age > 40 group by name , marks , garde having max(marks>60) order by name ASC;
