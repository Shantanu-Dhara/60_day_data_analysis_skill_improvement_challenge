# 1. Students with rating > 4 ---

DELIMITER //
CREATE PROCEDURE get_students_high_rating()
BEGIN
    SELECT DISTINCT s.student_id, s.full_name, s.phone_no
    FROM students s
    JOIN feedbacks f ON s.student_id = f.student_id
    WHERE f.rating > 4;
END //
DELIMITER ;
------------------------------------------------------------------------------------------------------------

# 2. Course duration (days) --- 

DELIMITER //
CREATE PROCEDURE get_course_duration()
BEGIN
    SELECT course_id, course_title,
    DATEDIFF(COALESCE(end_date, CURRENT_DATE), start_date) AS duration_days
    FROM courses
    WHERE start_date IS NOT NULL;
END //
DELIMITER ;
------------------------------------------------------------------------------------------------------------

# 3. Enrolled but no feedback ---

DELIMITER //
CREATE PROCEDURE get_students_no_feedback()
BEGIN
    SELECT s.student_id, s.full_name, c.course_title
    FROM enrollments e
    JOIN students s ON e.student_id = s.student_id
    JOIN courses c ON e.course_id = c.course_id
    LEFT JOIN feedbacks f 
        ON e.student_id = f.student_id 
        AND e.course_id = f.course_id
    WHERE f.feedback_id IS NULL;
END //
DELIMITER ;
------------------------------------------------------------------------------------------------------------

# 4. Students enrolled in more than 2 courses ---

DELIMITER //
CREATE PROCEDURE get_students_multiple_courses()
BEGIN
    SELECT s.student_id, s.full_name, COUNT(e.course_id) AS course_count
    FROM enrollments e
    JOIN students s ON s.student_id = e.student_id
    GROUP BY s.student_id, s.full_name
    HAVING COUNT(e.course_id) > 2;
END //
DELIMITER ;
------------------------------------------------------------------------------------------------------------

# 5. Top 3 courses by average rating ---

DELIMITER //
CREATE PROCEDURE get_top_courses()
BEGIN
    SELECT c.course_id, c.course_title, ROUND(AVG(f.rating),2) AS avg_rating
    FROM courses c
    JOIN feedbacks f ON c.course_id = f.course_id
    GROUP BY c.course_id, c.course_title
    ORDER BY avg_rating DESC
    LIMIT 3;
END //
DELIMITER ;
------------------------------------------------------------------------------------------------------------

# 6. Courses in current year with enrollments ----

DELIMITER //
CREATE PROCEDURE get_current_year_courses()
BEGIN
    SELECT c.course_id, c.course_title,
    COUNT(e.enrollment_id) AS enrollment_count
    FROM courses c
    JOIN enrollments e ON c.course_id = e.course_id
    WHERE YEAR(c.start_date) = YEAR(CURDATE())
    GROUP BY c.course_id, c.course_title
    HAVING enrollment_count > 5;
END //
DELIMITER ;
------------------------------------------------------------------------------------------------------------

# 7. Get feedback for a course (with parameter) ---

DELIMITER //
CREATE PROCEDURE get_feedbacks(
    IN p_course_id INT,
    IN p_min_rating INT
)
BEGIN
    SELECT s.full_name, f.rating, f.comments, f.feedback_date
    FROM feedbacks f
    JOIN students s ON s.student_id = f.student_id
    WHERE f.course_id = p_course_id
    AND f.rating >= p_min_rating
    ORDER BY f.feedback_date DESC;
END //
DELIMITER ;
------------------------------------------------------------------------------------------------------------

# 8. Students + courses + ratings (include NULL) ---

DELIMITER //
CREATE PROCEDURE get_students_courses_feedback()
BEGIN
    SELECT s.full_name, c.course_title, e.enrollment_date,
           f.rating AS feedback_rating
    FROM enrollments e
    JOIN students s ON e.student_id = s.student_id
    JOIN courses c ON e.course_id = c.course_id
    LEFT JOIN feedbacks f 
        ON e.student_id = f.student_id 
        AND e.course_id = f.course_id;
END //
DELIMITER ;
------------------------------------------------------------------------------------------------------------

# 9. Course completion rate ---

DELIMITER //
CREATE PROCEDURE get_course_completion_rate()
BEGIN
    SELECT c.course_id, c.course_title,
    CONCAT(
        ROUND(SUM(CASE WHEN e.status = 'Completed' THEN 1 ELSE 0 END)
        / COUNT(*) * 100, 2), '%'
    ) AS completion_rate
    FROM courses c
    JOIN enrollments e ON c.course_id = e.course_id
    GROUP BY c.course_id, c.course_title;
END //
DELIMITER ;
------------------------------------------------------------------------------------------------------------

# 10. Recent feedback trend (90 days) --- 

DELIMITER //
CREATE PROCEDURE get_recent_feedback_trend()
BEGIN
    SELECT c.course_id, c.course_title,
    COUNT(f.feedback_id) AS feedback_count,
    ROUND(AVG(f.rating), 2) AS avg_rating
    FROM feedbacks f
    JOIN courses c ON f.course_id = c.course_id
    WHERE f.feedback_date >= CURDATE() - INTERVAL 90 DAY
    GROUP BY c.course_id, c.course_title
    ORDER BY avg_rating DESC;
END //
DELIMITER ;




