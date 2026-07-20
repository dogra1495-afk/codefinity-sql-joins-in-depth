SELECT
    assignments.assignment_id,
    employees.name AS employee_name,
    projects.project_name,
    departments.department_name
FROM assignments
JOIN employees ON assignments.employee_id = employees.employee_id
JOIN projects ON assignments.project_id = projects.project_id
JOIN departments ON projects.department_id = departments.department_id;