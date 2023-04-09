-- Name : Pranita Pramod Patil
-- Project Nmae :  company_hr

-- MySQL dump 10.13  Distrib 5.6.33, for debian-linux-gnu (x86_64)

create database if not exists comp_hr;
use comp_hr;
--
-- Host: localhost    Database: comp_hr
-- ------------------------------------------------------
-- Server version	5.6.33-0ubuntu0.14.04.1

-- 1. Write a query to display the names (first_name, last_name) using alias name “First Name", "Last Name"Go to the editor Sample table: employees
select * from employees;

select first_name, last_name from employees;

-- 2. Write a query to get unique department ID from employee table.Go to the editor Sample table: employees
select distinct department_id from employees;

-- 3. Write a query to get all employee details from the employee table order by first name, descending.Go to the editor Sample table: employees
select * from employees  order by first_name desc;

-- 4. Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary).Go to the editor Sample table: employees
select first_name,last_name,salary,((salary/100)*15) as pf from employees;

-- 5. Write a query to get the employee ID, names (first_name, last_name), salary in ascending order of salary.Go to the editor Sample table: employees
 select first_name,last_name,salary from employees order by salary desc;


-- 6. Write a query to get the total salaries payable to employees.Go to the editor Sample table: employees
select sum(salary) from employees;

-- 7. Write a query to get the maximum and minimum salary from employees table.Go to the editor Sample table: employees
select max(salary),min(salary) from employees;

-- 8. Write a query to get the average salary and number of employees in the employees table.Go to the editor Sample table: employees
select avg(salary),count(employee_id) from employees;

-- 9. Write a query to get the number of employees working with the company.Go to the editor Sample table: employees
select count(employee_id) from employees;

-- 10. Write a query to get the number of jobs available in the employees table. Go to the editor Sample table: employees
select count(job_id) from employees;

-- 11. Write a query get all first name from employees table in upper case. Go to the editor Sample table: employees
select ucase(first_name)from employees;

-- 12. Write a query to get the first 3 characters of first name from employees table. Go to the editor Sample table: employees
select mid(first_name,1,3) from employees;

-- 13. Write a query to calculate 171*214+625. Go to the editor
select 171*214+652;

-- 14. Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table. Go to the editor Sample table: employees
select concat(first_name, " ",last_name) as concat from employees;

-- 15. Write a query to get first name from employees table after removing white spaces from both side. Go to the editor Sample table: employees
 select trim(first_name) from employees;

-- 16. Write a query to get the length of the employee names (first_name, last_name) from employees table. Go to the editor Sample table: employees

select length(first_name), length(last_name) from employees;

-- 17. Write a query to check if the first_name fields of the employees table contains numbers. Go to the editor Sample table: employees
select count(first_name) from employees where first_name like "%1%" or "%2%" or "%3%" or "%4%" or "%5%" or "%6%" or "%7%" or "%8%" or "%9%" or "%0%"  ;

-- 18. Write a query to select first 10 records from a table. Go to the editor Sample table: employees
select * from employees limit 10;

-- 19. Write a query to get monthly salary (round 2 decimal places) of each and every employee Go to the editor Note : Assume the salary field provides the 'annual salary' information.
select format(salary,2) from employees;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 1. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000. Go to the editor Sample table: employees
 
 select first_name, last_name, salary from employees 
 where salary not between 10000 and 15000;


-- 2. Write a query to display the name (first_name, last_name) and department ID of all employees in departments 30 or 100 in ascending order. Go to the editor Sample table: employees
select first_name, last_name,department_id from employees 
where  department_id = 30 or department_id=100 ;

-- 3. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100. Go to the editorSample table: employees
select first_name, last_name, salary, department_id from employees 
 where salary not between 10000 and 15000 and department_id=30 or department_id=100;
 

-- 4. Write a query to display the name (first_name, last_name) and hire date for all employees who were hired in 1987. Go to the editor Sample table: employees
select first_name, last_name, hire_date from employees
where year(hire_date)=1987;

-- 5. Write a query to display the first_name of all employees who have both "b" and "c" in their first name. Go to the editor Sample table: employees
select first_name from employees where first_name like "%b%" and first_name like "%c%";

-- 6. Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and whose salary is not equal to $4,500, $10,000, or $15,000. Go to the editor Sample table: employees
select last_name, job_id, salary from employees
where job_id in ("IT_PROG","SH_CLERK") and salary not in (4500,1000,15000);

-- 7. Write a query to display the last name of employees whose names have exactly 6 characters. Go to the editor Sample table: employees
select last_name from employees where length(last_name)=6;

-- 8. Write a query to display the last name of employees having 'e' as the third character. Go to the editor Sample table: employees
select last_name from employees where last_name like "__e%";

-- 9. Write a query to display the jobs/designations available in the employees table.Go to the editor Sample table: employees
select job_id from employees;

-- 10. Write a query to display the name (first_name, last_name), salary and PF (15% of salary) of all employees. Go to the editor Sample table: employees
select first_name, last_name, (salary/100)*15 as PF from employees ;

-- 11. Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'. Go to the editor Sample table: employees
select last_name from employees  where last_name in ("BLAKE","KING","FORD");

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 1.Write a query to list the number of jobs available in the employees table. Go to the editor Sample table: employees
select count(job_id) from employees;

-- 2. Write a query to get the total salaries payable to employees. Go to the editor Sample table: employees
select sum(salary) from employees;

-- 3. Write a query to get the minimum salary from employees table. Go to the editor Sample table: employees
select min(salary) from employees;

-- 4. Write a query to get the maximum salary of an employee working as a Programmer. Go to the editor Sample table: employees
select max(salary) from employees
where job_id = "IT_PROG";

-- 5. Write a query to get the average salary and number of employees working the department 90. Go to the editor Sample table: employees
select department_id, avg(salary) from employees
where department_id = 90;

-- 6. Write a query to get the highest, lowest, sum, and average salary of all employees. Go to the editor Sample table: employees
select min(salary),max(salary),sum(salary),avg(salary) from employees;

-- 7. Write a query to get the number of employees with the same job. Go to the editor Sample table: employees
select job_id, count(job_id) from employees
group by job_id;

-- 8. Write a query to get the difference between the highest and lowest salaries. Go to the editor Sample table: employees
select max(salary)-min(salary) from employees;

-- 9. Write a query to find the manager ID and the salary of the lowest-paid employee for that manager. Go to the editor Sample table: employees
select manager_id, min(salary) as lowest_paid from employees
group by manager_id ;

-- 10. Write a query to get the department ID and the total salary payable in each department. Go to the editor Sample table: employees
select department_id, sum(salary) from employees 
group by department_id;

-- 11. Write a query to get the average salary for each job ID excluding programmer. Go to the editor Sample table: employees
select job_id,avg(salary) from employees 
group by job_id having job_id != "IT_PROG";

select job_id,avg(salary) from employees
where job_id != "IT_PROG"
group by job_id;

-- 12. Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90 only. Go to the editor Sample table: employees
select job_id, sum(salary),avg(salary),min(salary),max(salary),department_id from employees
where department_id = 90
group by job_id;

-- 13. Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000. Go to the editor,Sample table: employees
select job_id,max(salary) from employees
group by job_id
having max(salary)>4000;

-- 14. Write a query to get the average salary for all departments employing more than 10 employees. Go to the editor Sample table: employees
select department_id, avg(salary) from employees
group by department_id
having count(employee_id) > 10;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- 1. Write a query to display the first day of the month (in datetime format) three months before the current month. Go to the editor Sample 
-- current date : 2014-09-03 Expected result : 2014-06-01
SELECT subdate("2023-04-01", INTERVAL 3 MONTH);

-- 2. Write a query to display the last day of the month (in datetime format) three months before the current month. Go to the editor
select subdate("2023-04-30",interval 3 month);

-- 3. Write a query to get the distinct Mondays from hire_date in employees tables. Go to the editor Sample table: employees
select distinct date_format(hire_date,"%Y-%M-%d") as hire_date from employees
where weekday(hire_date)=1;


-- 4. Write a query to get the first day of the current year. Go to the editor
select date_format(now(),"%Y-01-01")as first_day_year;

-- 5. Write a query to get the last day of the current year. Go to the editor
select date_format(now(),"%Y-12-31") as last_day_year;
 
-- 6. Write a query to calculate the age in year. Go to the editor
select date_format(from_days(datediff(now(),"2001-06-17")),"%Y")+0 as age;

-- 7. Write a query to get the current date in the following format. Go to the editor Sample date : 2014-09-04 Output : September 4, 2014
select curdate(), date_format(curdate(),"%M %d, %Y");

-- 8. Write a query to get the current date in Thursday September 2014 format. Go to the editor Thursday September 2014
select curdate(),date_format(curdate(), "%W %M %Y");

-- 9. Write a query to extract the year from the current date. Go to the editor
select curdate(),year(curdate()) as current_year;


-- 10. Write a query to get the DATE value from a given day (number in N). Go to the editor Sample days: 730677 Output : 2000-07-11
select from_days(730677);

-- 11. Write a query to get the first name and hire date from employees table where hire date between '1987-06-01' and '1987-07-30' Go to the editor Sample table: employees
select first_name,hire_date from employees
where hire_date between'1987-06-01' and '1987-07-30';


-- 12. Write a query to display the current date in the following format. Go to the editor Sample output: Thursday 4th September 2014 00:00:00
select curdate(), date_format(curdate(), "%W %D %M,%T");

-- 13. Write a query to display the current date in the following format. Go to the editor Sample output: 05/09/2014
select curdate(), date_format(curdate(), "%d/%m/%Y");


-- 14. Write a query to display the current date in the following format. Go to the editor Sample output: 12:00 AM Sep 5, 2014
select curdate(),date_format(curtime(),"%l:%i %b %e,%Y");

-- 15. Write a query to get the firstname, lastname who joined in the month of June. Go to the editor Sample table: employees
select first_name,last_name,hire_Date from employees
where month(hire_date) = 6;


 -- 16. Write a query to get the years in which more than 10 employees joined. Go to the editor Sample table: employees
select date_format(hire_date,"%Y")from employees
group by date_format(hire_date,"%Y")
having count(employee_id) > 10;

-- 17. Write a query to get first name of employees who joined in 1987. Go to the editor Sample table: employees
select first_name, date_format(hire_date, "%Y")from employees
where year(hire_date)=1987;


-- 18. Write a query to get department name, manager name, and salary of the manager for all managers whose experience is more than 5 years. Go to the editor Sample table: departments
select * from departments;
SELECT DEPARTMENT_NAME, FIRST_NAME, SALARY  
    FROM departments D 
       JOIN employees E 
         ON (D.MANAGER_ID=E.MANAGER_ID)  
           WHERE  (SYSDATE()-HIRE_DATE) / 365 > 5;
 

-- 19. Write a query to get employee ID, last name, and date of first salary of the employees. Go to the editor Sample table: employees
select employee_id,last_name,hire_date,salary from employees;

-- 20. Write a query to get first name, hire date and experience of the employees. Go to the editor Sample table: employees
select hire_date,sysdate(),hire_date,datediff(sysdate(),hire_date)/365
from employees;


-- 21. Write a query to get the department ID, year, and number of employees joined. Go to the editor Sample table : employees
select department_id,date_format(hire_date,"%Y"),
count(employee_id)
from employees
group by department_id,date_format(hire_date,"%Y")
order by department_id;

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 1. Write a query to get the job_id and related employee's id. Go to the editor Partial output of the query : job_id	Employees ID
-- AC_ACCOUNT	206
-- AC_MGR	205
-- AD_ASST	200
-- AD_PRES	100
-- AD_VP	101 ,102
-- FI_ACCOUNT	110 ,113 ,111 ,109 ,112 Sample table: employees
SELECT job_id, GROUP_CONCAT(employee_id, ' ')  'Employees ID' 
FROM employees GROUP BY job_id;


-- 2. Write a query to update the portion of the phone_number in the employees table, within the phone number the substring '124' will be replaced by '999'. Sample table: employees
update employees
set phone_number = replace(phone_number,'124','999')
where phone_number 
like '%124%';

-- 3. Write a query to get the details of the employees where the length of the first name greater than or equal to 8. Go to the editor Sample table: employees
select * from employees
where length(first_name) >= 8;


-- 4. Write a query to display leading zeros before maximum and minimum salary. Go to the editor Sample table: jobs
select job_id, lpad(max_salary, 7,'0') as max_salary,
lpad(min_Salary, 7,'0') as min_salary
from jobs;

-- 5. Write a query to append '@example.com' to email field. Sample table: employees Sample Output :

  -- EMAIL
  --------------------
  -- SKING@example.com
  -- NKOCHHAR@example.com
  -- LDEHAAN@example.com
  -- AHUNOLD@example.com
  -- BERNST@example.com
  -- DAUSTIN@example.com
  -- VPATABAL@example.com
  -- DLORENTZ@example.com
  -- NGREENBE@example.com
   update employees
   set email = concat(email,"@example.com");
  
  select* from employees;
  
-- 6. Write a query to get the employee id, first name and hire month. Go to the editor Sample table: employees
select employee_id,first_name, mid(hire_date, 6, 2) as hire_month from employees;


-- 7. Write a query to get the employee id, email id (discard the last three characters). Go to the editor Sample table: employees
select employee_id, reverse(substr(reverse(email), 3)) as email_id
from employees;

-- 8. Write a query to find all employees where first names are in upper case. Go to the editor Sample table: employees
select first_name, ucase(first_name) as upper_case from employees;


-- 9. Write a query to extract the last 4 character of phone numbers. Go to the editor Sample table: employees
-- right fuction use
select right(phone_number,4)as phone_no from employees;


-- 10. Write a query to get the last word of the street address. Go to the editor Sample table: locations
-- substring_index use
select location_id,street_address,
SUBSTRING_INDEX(REPLACE(REPLACE(REPLACE(street_address,',',' '),')',' '),'(',' '),' ',-1) 
as 'last_word_of_street_address' from locations;


-- 11. Write a query to get the locations that have minimum street length. Go to the editor Sample table: locations
select * from locations
where length(street_address) <= (select min(length(street_address)) from locations);

-- 12. Write a query to display the first word from those job titles which contains more than one words. Go to the editor Sample table: jobs
select job_title, substr(job_Title,1, instr(job_title, ' ')-1) from jobs;


-- 13. Write a query to display the length of first name for employees where last name contain character 'c' after 2nd position. Go to the editor Sample table: employees
select first_name, last_name from employees 
where instr(last_name, 'c')>2;

-- 14. Write a query that displays the first name and the length of the first name for all employees whose name starts with the letters 'A', 'J' or 'M'. Give each column an appropriate label. Sort the results by the employees' first names. Go to the editor Sample table: employees
select first_name "Name",
length(first_name) "length"
from employees
where first_name like 'J%'
or first_name like 'M%'
or first_name like 'A%'
order by first_name;

-- 15. Write a query to display the first name and salary for all employees. Format the salary to be 10 characters long, left-padded with the $ symbol. Label the column SALARY. Go to the editorSample table: employees
select first_name,salary,
lpad(salary, 10, "$") from employees;


-- 16. Write a query to display the first eight characters of the employees' first names and indicates the amounts of their salaries with '$' sign. Each '$' sign signifies a thousand dollars. Sort the data in descending order of salary. Go to the editor Sample table: employees
select left(first_name,8),
repeat("$", floor(salary/1000))
`salary($)`,salary
from employees
order by salary desc;

-- 17. Write a query to display the employees with their code, first name, last name and hire date who hired either on seventh day of any month or seventh month in any year. Go to the editor Sample table: employees	
select employee_id,first_name,last_name,hire_date
from employees
where position("07" in date_format(hire_date, '%d %m %Y')) > 0;

