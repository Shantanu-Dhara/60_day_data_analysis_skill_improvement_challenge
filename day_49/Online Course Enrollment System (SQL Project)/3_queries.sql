--- 1.	Find the Student id, names & phone no of students who have given a rating above 4 in any course.(Sub query)----

select student_id, full_name, phone_no 
from students 
where student_id in (
select student_id from feedbacks where rating > 4);

------------ or (use Join) --------------------

select s.student_id, s.full_name, s.phone_no 
from students s
join feedbacks f
on s.student_id = f.student_id 
where rating > 4;

------------ or (use Exist) --------------------

select distinct s.student_id, s.full_name, s.phone_no
from students s
where exists (
select 1 
from feedbacks f
where f.student_id = s.student_id
and rating > 4);

------------------------------------------------------------------------------------------------------------------------
---- 2.	Find the number of days each course runs.(DT)----

select course_id,Course_Title,
DATEDIFF(COALESCE(end_date, CURRENT_DATE), start_date) As duration_days
from courses
where start_date is not null;

------------------------------------------------------------------------------------------------------------------------
------ 3. Find all students who have enrolled but not given feedback.(CTE + Anti join)------

with enrolled_students as (
select e.student_id, e.course_id from enrollments e)
select s.student_id, s.full_name, c.course_title from enrolled_students es
join students s on s.student_id = es.student_id
join courses c on c.course_id = es.course_id
left join feedbacks f on f.student_id = es.student_id
and f.course_id = es.course_id where f.feedback_id is null;

# Alternative without CTE

select s.student_id, s.full_name, c.course_title
FROM enrollments e 
join students s on e.student_id = s.student_id
join courses c on e.course_id = c.course_id
left join feedbacks f on e.student_id = f.student_id
and e.course_id = f.course_id where f.comments is null;

------------------------------------------------------------------------------------------------------------------------
---- 4.	Find students who have enrolled in more than 2 courses.(CTE+ Having )------

with student_course_count as 
(select e.student_id, count(distinct(e.course_id)) as course_count
from enrollments e
group by e.student_id
having course_count >= 2)
select s.student_id, s.full_name, sc.course_count
from student_course_count sc
join students s ON s.student_id = sc.student_id;

------------------------------------------------------------------------------------------------------------------------
---- 5. Find top 3 courses with highest average rating.(CTE+ Window Dense_Rank)-----

with course_avg_rating as
(select c.course_id,c.course_title, avg(f.rating) as avg_rating
from courses c
join feedbacks f
on c.course_id = f.course_id
group by c.course_id, c.course_title),
course_rank as (
select course_id, course_title, avg_rating, dense_rank() 
over(order by avg_rating desc) as rank_no
from course_avg_rating)
select course_id, course_title, avg_rating
from course_rank
where rank_no <= 3
order by avg_rating desc;

------------------------------------------------------------------------------------------------------------------------
------ 6. Find courses that started in the current year and have more than 5 enrolments.(current month with Data Filter + Having)-----

select c.course_id, c.course_title, 
count(e.enrollment_id) as enrollment_count
from courses c
join enrollments e
on c.course_id = e.course_id
where year(c.start_date) = year(curdate())
group by course_id, course_title
having enrollment_count >= 1
order by enrollment_count desc;

------------------------------------------------------------------------------------------------------------------------
--- 7.	Write a stored procedure to get all feedback for a given course.(Store Procedure) --

delimiter //
create procedure get_feedbacks(in p_course_id int, in p_min_rating int)
begin
	select s.full_name, f.rating, f.comments, f.feedback_date
    from students s join feedbacks f
    on s.student_id = f.feedback_id
    where s.student_id = p_course_id
    and f.rating >= p_min_rating
    order by f.feedback_date desc;
end //
delimiter ;

call get_feedbacks(2, 0);

------------------------------------------------------------------------------------------------------------------------
--- 8.	Get the list of students, their course titles, and feedback ratings. (include missing Ratings) (Joins)--

select s.full_name, c.course_title, e.enrollment_date, f.rating as feedback_rating
from enrollments e 
join students s
on e.student_id = s.student_id
join courses c
on e.course_id = c.course_id
left join feedbacks f
on e.student_id = f.student_id
and e.course_id = f.course_id;

------------------------------------------------------------------------------------------------------------------------
--- 9.	Course completion rate (Aggregate + CASE) ---

select c.course_id, c.course_title,
concat(round(sum(case when e.status = "Completed" then 1 else 0 end) / count(*) * 100, 2), "%")
as course_completion_rate from courses c
join enrollments e
on c.course_id = e.course_id
group by c.course_id, c.course_title;

------------------------------------------------------------------------------------------------------------------------
--- 10.	Recent feedback trend (Date filter + aggregate) ---
--- “By course, show count and average rating of feedbacks in the last 90 days; order by average rating desc.” ----

select c.course_id, c.course_title,
count(f.feedback_id) as feedback_count,
round(avg(f.rating), 2) as avg_rating
from feedbacks f
join courses c
on f.course_id = c.course_id
where f.feedback_date >= curdate() - interval 90 day
group by c.course_id, c.course_title
order by avg_rating desc;


