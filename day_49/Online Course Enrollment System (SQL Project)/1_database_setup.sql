-- Relational Database Design
CREATE DATABASE online_course_enrollment_system;
USE online_course_enrollment_system;
-------------------------------------------------------------------

# Students Table
create table students (
student_id int auto_increment primary key,
full_name varchar(150) not null,
address varchar(100) not null,
email_id varchar(100) unique not null,
phone_no varchar(15) unique not null,
password varchar(50) not null,
registration_date date default(current_date));
-------------------------------------------------------------------

# Courses Table
create table courses (
course_id int auto_increment primary key,
course_title varchar(50) not null,
description text,
instructor varchar(100) not null,
start_date date not null,
end_date date
);
-------------------------------------------------------------------

# Enrollment Table
create table enrollments (
enrollment_id int auto_increment primary key,
student_id int,
course_id int,
enrollment_date date default(current_date),
status enum('Enrolled', 'Completed', 'Cancelled', 'Not Specified') default 'Not Specified',
foreign key (student_id) references students(student_id),
foreign key (course_id) references courses(course_id)
);
-------------------------------------------------------------------

# Feedback Table
create table feedbacks (
feedback_id int auto_increment primary key,
student_id int not null,
course_id int not null,
rating int check (rating >= 1 AND rating <= 5) not null,
comments text,
feedback_date date default(current_date),
foreign key (student_id) references students(student_id),
foreign key (course_id) references courses(course_id)
);




