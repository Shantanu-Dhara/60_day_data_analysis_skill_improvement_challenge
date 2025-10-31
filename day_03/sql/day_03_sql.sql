-- SELECT | Selecting students table from college database
select * from college.students;

-- DISTINCT | Remove duplicates name here
select distinct name from college.students;

-- WHERE | Giving only data from name, depatment and semester column where semester is 4th
select name, department, semester from college.students where semester = "4th";

-- LIKE | Finding 1 in duration column and if match give all those data 
select * from college.students where duration like "%1%";

-- ORDER BY | Give data in order ascending or descending 
select * from college.students order by roll asc;
select * from college.students order by roll desc;

-- AND- Both condition true | OR- If one condition is true 
select * from college.students where department = "Commerce" and semester = "4th";
select * from college.students where department = "Commerce" or roll = 5;

-- BETWEEN | It retrives all students data whose roll number are between 2 and 4 
select * from college.students where roll between 2 and 4;

-- IN- It retrives all data where department is arts and science | NOT IN- It retrives all data except arts and science
select * from college.students where department in ("Arts", "Science"); 
select * from college.students where department not in ("Arts", "Science") 