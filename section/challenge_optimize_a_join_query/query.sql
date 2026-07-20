SELECT
    s.student_id,
    s.name AS student_name,
    c.class_name,
    t.name AS teacher_name,
    g.subject,
    g.score
FROM
    students s
    INNER JOIN classes c ON s.class_id = c.class_id
    INNER JOIN teachers t ON c.teacher_id = t.teacher_id
    INNER JOIN grades g ON s.student_id = g.student_id
WHERE
    g.score > 80;