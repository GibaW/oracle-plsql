-- ============================================
-- Topic: LAB SETUP
-- Description: Create base tables for Oracle PL/SQL laboratory
-- Author: GW
-- ============================================

CREATE TABLE departments (
    department_id   NUMBER PRIMARY KEY,
    department_name VARCHAR2(100) NOT NULL
);

CREATE TABLE employees (
    employee_id     NUMBER PRIMARY KEY,
    employee_name   VARCHAR2(100) NOT NULL,
    department_id   NUMBER NOT NULL,
    manager_id      NUMBER,
    salary          NUMBER(10,2),
    hire_date       DATE,
    
    CONSTRAINT fk_emp_department
        FOREIGN KEY (department_id)
        REFERENCES departments(department_id)
);