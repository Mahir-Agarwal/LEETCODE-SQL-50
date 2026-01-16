SELECT 
    s.student_id,          -- select each student's ID 
    s.student_name,        -- select each student's name
    su.subject_name,       -- select each subject name
    COUNT(e.subject_name) AS attended_exams   -- count how many times the student attended this subject exam
FROM Students s
-- CROSS JOIN creates every possible combination of (student × subject)
-- This ensures we list ALL subjects for EVERY student, even if they never attended it
CROSS JOIN Subjects su

-- LEFT JOIN matches the exam records to each (student, subject) pair
LEFT JOIN Examinations e 
    ON s.student_id = e.student_id           -- match same student
   AND su.subject_name = e.subject_name      -- match same subject

-- GROUP BY groups results by each student & subject pair
-- So COUNT() will work separately for each student-subject combination
GROUP BY 
    s.student_id,
    s.student_name,
    su.subject_name

-- Order final output by student id first, then subject name
ORDER BY 
    s.student_id,
    su.subject_name;

