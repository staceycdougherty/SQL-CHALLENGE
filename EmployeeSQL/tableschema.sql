--table schema

create table titles(
	title_id varchar primary key,
	title varchar not null
);

create table departments(
	dept_no varchar primary key,
	dept_name varchar
);

create table employees(
	emp_no int primary key,
	emp_title_id varchar not null,
	birth_date varchar not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date varchar not null,
	foreign key (emp_title_id) references titles(title_id)
);

create table dept_emp(
	emp_no int not null,
	dept_no varchar not null,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

create table salaries(
	emp_no int primary key,
	salary int not null,
	foreign key (emp_no) references employees(emp_no)
);

create table dept_manager(
	dept_no varchar not null,
	emp_no int not null,
	primary key (dept_no, emp_no),
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);
