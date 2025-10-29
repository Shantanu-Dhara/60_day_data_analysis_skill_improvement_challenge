-- CREATE 
create database college;
show databases;
use college;

create table students (
id int primary key,
name varchar(50),
roll int unique key,
department varchar(30),
semester varchar(30)
);
-- -- ______________________________________________________________________________________________________________________________________________________

-- INSERT
insert into students (id, name, roll, department, semester) values
(0011, "Shantanu", 1, "Arts", "4th"),
(0022, "Rumi", 2, "Science", "4th"),
(0033, "Bappa", 3, "Commerce", "4th"),
(0044, "Rakesh", 4, "Science", "4th"),
(0055, "Surjo", 5, "Commerce", "4th");
-- -- ______________________________________________________________________________________________________________________________________________________

-- -- ALTER
alter table students add status varchar(30) default "Not Yet Pass";
alter table students change status student_status varchar(30) default "Fail";
alter table students alter column student_status drop default;
-- -- ______________________________________________________________________________________________________________________________________________________

-- -- UPDATE
update students set student_status = "Pass" where id = 0011;
-- -- ______________________________________________________________________________________________________________________________________________________

-- -- DELETE
delete from students where id = 0033;
-- -- ______________________________________________________________________________________________________________________________________________________

-- -- DROP 
drop table students;
drop database college;

-- -- ______________________________________________________________________________________________________________________________________________________
-- -- TRUNCATE
 truncate table students;
-- -- ______________________________________________________________________________________________________________________________________________________

-- -- DATA TYPE 
select column_name, data_type
from information_schema.columns
where table_name = "students" and table_schema = "college";
-- -- ______________________________________________________________________________________________________________________________________________________
