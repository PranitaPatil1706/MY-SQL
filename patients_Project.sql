-- Name: Pranita Pramod Patil
-- Project Name: patients_datasets

-- Q1 Write a query to create a patients table with the date, patient ID, patient name, age, weight, gender, 
-- location, phone number, disease, doctor name, and doctor ID fields
create database patients;

use patients;

-- Q2Write a query to insert values into the patients table
select * from patients_datasets;

-- Q3. Write a query to display the total number of patients in the table 
select count(pid) from patients_datasets;

-- Q4 . Write a query to display the patient ID, patient name, gender, and disease of the oldest (age) patient
select pid, p_name, gender, disease from patients_datasets order by age desc limit 1;

-- Q5.  Write a query to display the patient ID and patient name of all entries with the current date
select pid,p_name, curdate() from patients_datasets;

-- Q6. Write a query to display the old patient name and new patient name in uppercase
select ucase(p_name)from patients_datasets;

-- Q7.Write a query to display the patients' names along with the total number of characters in their name
select p_name, length(p_name) char_length from patients_datasets;

-- Q8 Write a query to display the gender of the patient as M or F along with the patient's name
select p_name, if(gender = "Male", "M","F")from patients_datasets;

-- Q9. Write a query to combine the patient's name and doctor's name in a new column
select p_name, doctor_name, concat(p_name,doctor_name) as pd_name from patients_datasets;

-- Q10. Write a query to display the patients' age along with the logarithmic value (base 10) of their age
select age, log10(age)from patients_datasets;

-- Q11. Write a query to extract the year for a given date and place it in a separate column
-- select year('date'),location, format('date',"%Y.%M.%y") patients_datasets;
select mid(date, 7,5) from patients_datasets;

-- Q12. Write a query to check the patient's name and doctor's name are similar and display NULL, else return the patient's name
select p_name,doctor_name, if(p_name = doctor_name,"null",p_name)as checking from patients_datasets;

-- Q13. Write a query to check if a patient's age is greater than 40 and display Yes if it is and No if it isn't
select p_name,age,if(age>40,"yes","no") from patients_datasets;

-- Q14. Write a query to display duplicate entries in the doctor name column
select doctor_name from patients_datasets group by doctor_name;

select count(doctor_name),doctor_name from patients_datasets 
group by doctor_name having count(doctor_name)>=2;