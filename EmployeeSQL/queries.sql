select * from titles;
select * from salaries;
select * from dept_emp;
select * from employees;
select * from departments;
select * from dept_manager;

--Data Analysis--

--Question 1--
select employees.emp_no, last_name, first_name, sex, salary
from employees
left join salaries
on employees.emp_no = salaries.emp_no;

--Question 2--
select first_name, last_name, hire_date
from employees
where hire_date >= '1986-01-01' and hire_date <= '1986-12-31';

--Question 3--
select departments.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
from departments
inner join dept_manager
on departments.dept_no = dept_manager.dept_no
inner join employees
on employees.emp_no = dept_manager.emp_no
order by dept_no asc;

--Question 4--
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from departments
inner join dept_emp
on departments.dept_no = dept_emp.dept_no
inner join employees
on employees.emp_no = dept_emp.emp_no
order by emp_no asc;

--Question 5--
select first_name, last_name, sex
from employees
where first_name like 'Hercules' and last_name like 'B%';

--Question 6--(need to get department name!)
select emp_no, last_name, first_name
from employees
where emp_no in (
	select emp_no
	from dept_emp
	where dept_no in (
		select dept_no
		from departments
		where dept_name='Sales'
		));

--Question 7--

--Question 8--
select last_name, count(*)
from employees
group by last_name
order by count(*) desc;