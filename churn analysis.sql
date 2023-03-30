-- Name: Pranita Pramod Patil
-- Project Name: Churn analysis


create database churn_analysis;

use churn_analysis;

-- Q1 upload the churnData.csv dataset to the lab
 
 -- Q2 Import the churnData.csv into the database as a table
 select * from churndata;

-- Q3 Find the number of unqiue customer present in the data

select distinct (internetservice) from churndata;

-- Q4 find the number of customer who have left vs.those who haven't 



-- Q5 find the top two customer IDs with the highest total charges(from the totalcharge column) for those who were taking all the service offered 
-- but still decided to leave the company

select * from churndata
where 
phoneservice != "no" and
internetservice != "no" and
phoneservice != "no" and 
onlinebackup != "no" and
deviceprotection != "no" and
techsupport != "no" and
streamingTv != "no" and
streamingmovies != "no" and
churn = "no"
order by totalcharges desc limit 2;

-- Q6 find the average tenure and average monthly charge by gender for those being stopped customer

select gender, avg(tenure), avg(monthlycharges) from churndata
group by gender, churn having churn = "no";

-- Q7 write a to query  understand the split of customer IDs by chrun and seniorcitizen columns and 
-- find if the average of the totalcharge column are higher for senior citizen  or nonsenior citizen

select  churn, seniorcitizen , avg(totalcharges) as avg_charge from churndata
group by churn, seniorcitizen order by avg_charge desc ;

-- Q8 Display the mode of payment preferred by those who are no longer customers (from the PaymentMethod column) and 
-- those who still are in descending order of TotalCharge with only those customers who have paid more than $10.000

select paymentmethod, churn, sum(totalcharges) from churndata
group by churn, paymentmethod having
sum(totalcharges)  > 10000 order by sum(totalcharges) desc;
 
-- Q9 Find the number of people who are no longer customers that were only taking the phone services, the internet services, 
-- or both and exclude those who were using fiber-optic internet services

select phoneservice, internetservice, churn, count(customerid) 
from churndata
group by phoneservice, internetservice, churn
having (phoneservice = "yes" or internetservice != "no")
and internetservice != "fiber optic" and churn = "no"; 



