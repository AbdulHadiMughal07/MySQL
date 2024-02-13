create database F1_Hadi;

use F1_Hadi;

create table Student(
	id int primary key,
    name varchar(10),
    age int,
    grade varchar (3),
    marks int,
    city varchar(10)
);

select * from Student;

insert into Student (id , name, age, grade, marks, city) values
(108 , "Jasim", 25, "A", 85, "Karachi");


select * from Student;


                             