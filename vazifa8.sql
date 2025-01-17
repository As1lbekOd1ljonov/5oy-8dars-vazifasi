CREATE TABLE IF NOT EXISTS departments(
	id SERIAL PRIMARY KEY,
	department_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS employees(
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL, 
	last_name VARCHAR(50) NOT NULL,
	employees_position VARCHAR(50),
	salary NUMERIC(10, 2),
	hire_date DATE,
	department_id INT REFERENCES departments(id)
);

CREATE TABLE IF NOT EXISTS projects(
	id SERIAL PRIMARY KEY,
	project_name VARCHAR(50),
	start_date DATE,
	end_date DATE,
	budjet INT
);

INSERT INTO employees (id, first_name, last_name, employees_position, salary, hire_date, department_id) VALUES 
(1, 'Ali', 'Karimov', 'Manager', 3000, '2020-03-15', 1),
(2, 'Nodira', 'Toirova', 'Developer', 2500, '2021-05-10', 2),
(3, 'Shoxruh', 'Abdullayev', 'Designer', 2200, '2022-01-22', 3),
(4, 'Zarina', 'Abdullayeva', 'HR Specialist', 1800, '2019-11-11', 1),
(5, 'Jasur', 'Aliyev', 'Developer', 2400, '2023-02-01', 2);

INSERT INTO departments (id, department_name) VALUES 
(1, 'Administration'),
(2, 'IT'),
(3, 'Design');

INSERT INTO projects (id, project_name, start_date, end_date, budjet) VALUES 
(1, 'New Website', '2023-01-10', '2023-06-30', 50000),
(2, 'Mobile App', '2022-08-15', '2023-03-20', 30000),
(3, 'CRM System', '2024-02-01', NULL, 60000);

SELECT first_name || ' '|| last_name as full_name FROM employees;

SELECT first_name, salary FROM employees ORDER BY salary DESC;

SELECT first_name, salary FROM employees WHERE salary > 2500;

SELECT first_name, salary FROM employees ORDER BY salary DESC LIMIT 3;

SELECT first_name, salary FROM employees WHERE salary  IN(2400, 3000);

SELECT first_name, salary FROM employees WHERE salary BETWEEN 2000 AND 3000;

SELECT first_name FROM employees WHERE first_name LIKE '%a%';

SELECT project_name, end_date FROM projects WHERE end_date IS NULL;


