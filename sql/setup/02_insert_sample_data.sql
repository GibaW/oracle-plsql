-- ============================================
-- Topic: LAB SETUP
-- Description: Insert sample data and generate volume for Oracle SQL tuning exercises
-- Author: GW
-- ============================================

-- Departments
INSERT INTO departments (department_id, department_name) VALUES (10, 'Finance');
INSERT INTO departments (department_id, department_name) VALUES (20, 'IT');
INSERT INTO departments (department_id, department_name) VALUES (30, 'Sales');
INSERT INTO departments (department_id, department_name) VALUES (40, 'Operations');
INSERT INTO departments (department_id, department_name) VALUES (50, 'HR');

COMMIT;

-- Generate employees with volume
INSERT INTO employees (
    employee_id,
    employee_name,
    department_id,
    manager_id,
    salary,
    hire_date
)
select LEVEL AS employee_id, 'Employee ' || LEVEL AS employee_name,
       CASE MOD(LEVEL, 5)
            WHEN 0 THEN 10
            WHEN 1 THEN 20
            WHEN 2 THEN 30
            WHEN 3 THEN 40
            ELSE 50
       END AS department_id,
       case WHEN LEVEL <= 5 THEN NULL
            ELSE MOD(LEVEL, 5) + 1
       END AS manager_id,
       ROUND(4000 + DBMS_RANDOM.VALUE(0, 12000), 2) AS salary,
       DATE '2018-01-01' + TRUNC(DBMS_RANDOM.VALUE(0, 2500)) AS hire_date
FROM dual
CONNECT BY LEVEL <= 10000;

ALTER TABLE employees
ADD CONSTRAINT fk_emp_manager
FOREIGN KEY (manager_id)
REFERENCES employees(employee_id);

COMMIT;