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

-- Task 2: Modifying a View
CREATE OR REPLACE VIEW vw_work_hrs AS
SELECT 
    e.first_name AS first_name,
    e.last_name AS last_name,
    p.pname AS project_name,
    w.hours AS work_hours
FROM 
    employees e
JOIN 
    work_hours w 
ON 
    e.employee_id = w.employee_id
JOIN 
    projects p 
ON 
    w.project_id = p.project_id
WHERE 
    e.department_id = 5;

-- Task 3: Creating Views with Check Option
CREATE VIEW vw_high_status_suppliers AS
SELECT 
    *
FROM 
    suppliers
WHERE 
    status > 15
WITH CHECK OPTION;
