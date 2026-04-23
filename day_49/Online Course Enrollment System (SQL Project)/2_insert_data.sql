-- Insert Data Into Students Table
insert into students (full_name, address, email_id, phone_no, password)
values
('Rahul Sharma', 'Delhi', 'rahul@gmail.com', '9876543210', 'pass123'),
('Priya Singh', 'Mumbai', 'priya@gmail.com', '9876543211', 'pass123'),
('Amit Das', 'Kolkata', 'amit@gmail.com', '9876543212', 'pass123'),
('Sneha Roy', 'Kolkata', 'sneha@gmail.com', '9876543213', 'pass123'),
('Arjun Verma', 'Bangalore', 'arjun@gmail.com', '9876543214', 'pass123');
-------------------------------------------------------------------

-- Insert Data Into Courses Table
insert into courses (course_title, description, instructor, start_date, end_date)
values
('SQL Basics', 'Learn SQL from scratch', 'John Smith', '2025-01-01', '2025-02-01'),
('Advanced SQL', 'Deep SQL concepts', 'Jane Doe', '2025-02-10', '2025-03-10'),
('Web Development', 'HTML CSS JS', 'Mike Ross', '2025-03-01', null),
('Python Programming', 'Beginner to Advanced', 'David Lee', '2025-01-15', '2025-03-15'),
('Data Analytics', 'Excel + SQL + Power BI', 'Sarah Khan', '2025-02-01', null);
-------------------------------------------------------------------

-- Insert Data Into Enrollments Table
insert into enrollments (student_Id, course_Id, status)
values
(1,1,'Completed'),
(1,2,'Enrolled'),
(2,1,'Completed'),
(2,3,'Enrolled'),
(3,2,'Cancelled'),
(3,4,'Completed'),
(4,1,'Enrolled'),
(4,5,'Completed'),
(5,3,'Enrolled'),
(5,4,'Completed');
-------------------------------------------------------------------

-- Insert Data Into Feedback Table
insert into feedbacks (student_id, course_id, rating, comments)
values
(1,1,5,'Excellent course'),
(2,1,4,'Very good'),
(3,4,5,'Loved it'),
(4,5,3,'Average'),
(5,4,4,'Good content');