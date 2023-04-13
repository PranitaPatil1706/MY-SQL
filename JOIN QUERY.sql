-- name:- PRANITA PRAMOD PATIL
-- Project Name:- Company HR(only join Query)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
use comp_hr;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- tables of comapny HR
select * from countries;
select * from departments;
select * from employees;
select * from job_history;
select * from jobs;
select * from locations;
select * from regions;

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 1. Write a query to find the addresses (location_id, street_address, city, state_province,country_name) of all the departments.  Sample table: locations 
select l.location_id, l.street_address, l.city, l.state_province, c.country_name from 
locations as l
join countries as c  
on l.country_id = c.country_id;


-- 2. Write a query to find the name (first_name, last name), department ID and name of all the employees.  Sample table: employees Sample table: departments
select e.first_name, e.last_name, d.department_id, d.department_name from employees as e
join departments as d on e.manager_id = d.manager_id;

-- 3. Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London.  Sample table: departments  Sample table: locations
select e.first_name, e.last_name, e.job_id, d.department_id, d.department_name, l.city from employees as e
join departments as d join locations as l on e.department_id = d.department_id where l.city = "London";

-- 4. Write a query to find the employee id, name (last_name) along with their manager_id and  name (last_name).  Sample table: employees
select e.employee_id, e.last_name, m.employee_id, m.last_name from employees as e
 join employees as m 
 on e.employee_id = m.employee_id;

-- 5. Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'.  Sample table: employees
select e.first_name, e.last_name, h.hire_date from 
employees as e 
join  employees as h
on  h.last_name = "jones"
where h.hire_date < e.hire_date ;

-- 6. Write a query to get the department name and number of employees in the department.  Sample table: employees Sample table: departments
select d.department_name, count(employee_id) from
departments as d
join employees as e
on d.department_id =e.department_id
group by d.department_id,department_name
order by department_name;

-- 7. Write a query to find the employee ID, job title, number of days between ending date and  starting date for all jobs in department 90.  Sample table: employees
select e.employee_id, j.job_title, datediff(h.start_date,h.end_date) as diff
from employees as e
join jobs as j
on e.job_id=j.job_id
join job_history as h
on e.department_id = h.department_id
where e.department_id=90;

-- 8. Write a query to display the department ID and name and first name of manager. Sample table: employees Sample table: departments
select d.department_id, d.department_name, e.first_name from employees as e
join departments as d
on d.manager_id = e.manager_id;

-- 9. Write a query to display the department name, manager name, and city.  Sample table: employees Sample table: departments Sample table: locations
select d.department_name, e.first_name, l.city from employees as e
join departments as d 
on d.department_id = e.department_id
join locations as l
on d.location_id = l.location_id
order by e.first_name;

-- 10. Write a query to display the job title and average salary of employees.  Sample table: employees
select j.job_title, avg(salary),e.employee_id  from employees as e
join jobs as j
group by e.employee_id,j.job_title
order by employee_id;

-- 11. Write a query to display job title, employee name, and the difference between salary of  the employee and minimum salary for the job.  Sample table: employees
select j.job_title, e.first_name, e.last_name,(e.salary-j.min_salary) as diff from employees as e
join jobs as j
on j.job_id = e.job_id;

-- 12. Write a query to display the job history that were done by any employee who is currently  drawing more than 10000 of salary.  Sample table: employees Sample table: Job_history
select j.job_id, e.salary from employees as e
join job_history as j
on j.job_id = e.job_id
where e.
salary > 10000;

-- 13. Write a query to display department name, name (first_name, last_name), hire date, salary of the manager for all managers whose experience is more than 15 years. Sample table: employees Sample table: department
select d.department_name, e.first_name, e.last_name, e.hire_date, e.salary,(datediff(now(),hire_date))/365 as experience 
from employees as e
join departments as d
on e.employee_id = d.department_id
where (datediff(now(),hire_date))/365 > 15; 