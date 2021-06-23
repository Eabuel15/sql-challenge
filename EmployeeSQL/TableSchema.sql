-- Table Schema

-- Make departments table
drop table departments;

create table departments(
	dept_no varchar(10),
	dept_name varchar(100) not null,
	CONSTRAINT pk_departments PRIMARY KEY (dept_no)
);
select * from departments;

-- Make employees table
drop table employees;

create table employees(
	emp_no int not null,
	emp_title varchar(5),
	birth_date date not null,
	first_name varchar(20) not null,
	last_name varchar(20) not null,
	sex varchar not null,
	hire_date date not null,
	CONSTRAINT pk_employees PRIMARY KEY (emp_no)
);
select * from employees;

-- Make dept_emp table
drop table dept_emp;

create table dept_emp(
	emp_no int not null,
	dept_no varchar(10) not null,
 	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
select * from dept_emp;

-- Make Dept_manager table
drop table dept_manager;

create table dept_manager(
	dept_no varchar not null,
	emp_no int not null,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
select * from dept_manager;

-- Make salaries table
drop table salaries;

create table salaries(
	emp_no int not null,
	salary int not null,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
select * from salaries;

-- Make titles table
drop table titles;

create table titles(
	title_id varchar(100),
	title varchar(100)
);
select * from titles;