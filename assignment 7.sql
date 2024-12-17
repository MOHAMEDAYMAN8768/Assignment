-- Task 1: Creating a Simple View
CREATE VIEW vw_employee_details AS
SELECT 
    e.first_name AS first_name,
    e.last_name AS last_name,
    d.department_name AS department_name
FROM 
    employees e
JOIN 
    departments d 
ON 
    e.department_id = d.department_id;


Select * from vw_employee_details;

---------------------------------------------
---------------------------------------------
---------------------------------------------
-- Task 2: Modifying a View
CREATE VIEW vw_work_hrs AS
SELECT
    e.employee_id,
    e.first_name, 
    e.last_name, 
    e.job_id, 
    j.job_title, 
    h.start_date, 
    h.end_date,
	DATEDIFF(month, h.start_date, h.end_date) AS Work_Experience_years
FROM 
    employees e
INNER JOIN 
    jobs j 
    ON e.job_id = j.job_id
INNER JOIN 
    job_history h 
    ON e.employee_id = h.employee_id;
GO



select * from vw_work_hrs;



---------------------------------------------
---------------------------------------------
---------------------------------------------
-- Task 3: Creating Views with Check Option
Drop view higher_salary;
CREATE VIEW higher_salary AS 
WITH avg_salary AS (
    SELECT AVG(salary) AS avg_sal 
    FROM employees
)
SELECT
    e.employee_id,
    d.department_name,
    j.job_title,
    e.first_name,
    e.last_name,
    e.salary
FROM 
    employees e
INNER JOIN 
    departments d 
    ON d.department_id = e.department_id
INNER JOIN 
    jobs j 
    ON e.job_id = j.job_id
WHERE 
    e.salary > (SELECT avg_sal FROM avg_salary)
WITH CHECK OPTION;

select * from higher_salary order by salary desc;