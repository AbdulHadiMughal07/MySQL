create  database Center;

use Center;

create table dept(
	id int primary key,
    name varchar(15)
);

create table teacher(
	id int primary key,
    name varchar(15),
    dept_id int,
    foreign key (dept_id) references dept (id)
    ON UPDATE CASCADE
    ON UPDATE DELET
);