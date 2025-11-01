-- Aggregate Function

select sum(marks) as total_marks from demo3.students;

select name, marks from demo3.students where marks = (select max(marks) from demo3.students);

select name, marks from demo3.students where marks = (select min(marks) from demo3.students);

select avg(marks) as average from demo3.students;

select count(Department) no_of_department from demo3.students where Department = "General";

