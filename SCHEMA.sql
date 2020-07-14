CREATE TABLE departments (
    dept_no VARCHAR(10),
    dept_name VARCHAR(50),
    CONSTRAINT pk_departments PRIMARY KEY (dept_no));

CREATE TABLE dept_emp (
    emp_no INT,
    dept_no VARCHAR(10))

CREATE TABLE dept_manager (
    dept_no VARCHAR(10),
    emp_no INT)

CREATE TABLE employees (
    emp_no INT,
	emp_title_id VARCHAR(10),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex VARCHAR(1),
    hire_date DATE,
    CONSTRAINT pk_employees PRIMARY KEY (emp_no));

CREATE TABLE salaries (
    emp_no INT,
    salary INT)

CREATE TABLE titles (
    title_id VARCHAR(10),
    title VARCHAR(50))

DROP TABLE departments CASCADE
DROP TABLE dept_emp CASCADE
DROP TABLE dept_manager CASCADE
DROP TABLE employees CASCADE
DROP TABLE salaries CASCADE
DROP TABLE titles CASCADE

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE titles ADD CONSTRAINT fk_titles_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);