CREATE TABLE Title (
    title_id VARCHAR(5) PRIMARY KEY,
    title VARCHAR NOT NULL
);

CREATE TABLE Employee (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(5) NOT NULL REFERENCES Title(title_id),
    birth_date DATE NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    sex VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL
);

CREATE TABLE Salary (
    emp_no INT PRIMARY KEY REFERENCES Employee(emp_no),
    salary INT NOT NULL
);

CREATE TABLE Department (
    dept_no VARCHAR(4) PRIMARY KEY,
    dept_name VARCHAR NOT NULL
);

CREATE TABLE Department_Manager (
    dept_no VARCHAR(4) NOT NULL REFERENCES Department(dept_no),
    emp_no INT PRIMARY KEY REFERENCES Employee(emp_no)
);

CREATE TABLE Department_Employee (
    emp_no INT NOT NULL REFERENCES Employee(emp_no),
    dept_no VARCHAR(4) NOT NULL REFERENCES Department(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

