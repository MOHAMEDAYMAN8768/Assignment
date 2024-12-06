SELECT employee_id, last_name, salary
FROM employees
WHERE salary BETWEEN 2000 AND 5000
  AND manager_id NOT IN (101, 200);

SELECT e.first_name, e.last_name , d.department_name
FROM employees e
JOIN departments d
  ON e.department_id = d.department_id
ORDER BY d.department_name;

SELECT department_id, COUNT(*) AS num_employees, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id;

