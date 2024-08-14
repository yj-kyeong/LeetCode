# Write your MySQL query statement below
SELECT Stu.student_id, Stu.student_name, Sub.subject_name, COUNT(E.student_id) AS attended_exams
FROM Students Stu
CROSS JOIN Subjects Sub
LEFT JOIN Examinations E ON E.student_id = Stu.student_id AND E.subject_name = Sub.subject_name
GROUP BY Stu.student_id, Stu.student_name, Sub.subject_name
ORDER BY Stu.student_id, Sub.subject_name