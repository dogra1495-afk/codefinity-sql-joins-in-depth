SELECT
    students.name AS student_name,
    classes.class_name,
    teachers.name AS teacher_name,
    AVG(grades.score) AS average_grade
FROM
    students
    LEFT JOIN classes ON students.class_id = classes.class_id
    LEFT JOIN teachers ON classes.teacher_id = teachers.teacher_id
    LEFT JOIN grades ON students.student_id = grades.student_id
GROUP BY
    students.student_id,
    students.name,
    classes.class_name,
    teachers.name;