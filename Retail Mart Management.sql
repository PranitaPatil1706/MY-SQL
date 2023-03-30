-- Name: Pranita Pramod Patil
-- Project Name: Retail Mart Management

-- Q1: Write q query to create a database names SQL basics

create database if not exists `SQL basics`;

-- Q2: write a query to select database

use `SQL basics`;

-- Q3:Write a query to create a product table with the fields product code, 
-- product name, price, stock, and category, 
-- a customer table with the fields customer ID, customer name, customer location,and customer phone number,  
-- a sales table with the fields date, order number, product code, product name, quantity, and price 

-- create table product
create table if not exists product
(product_code int,
product_name varchar(255),
price int,
stock int,
category varchar(255));
 
-- create table customer
create table if not exists customer
(customer_id int,
customer_name varchar(255),
customer_location varchar(255),
customer_phone_number int);

-- create table sales
create table if not exists sales
(field_date date,
order_number int,
product_code varchar(255),
product_name varchar(255),
quantity int,
price int);


-- Q4  Write a query to insert values into the customer, product, and sales tables
 
 -- insert data customer table
 
 insert into customer
 values(1111,"Nisha","kerala",8392320),
(1212,"Oliver","kerala",4353891),
(1216,"Nila","delhi",3323242),
(1246,"Vignesh","chennai",1111212),
(1313,"shiny","Maharastra",5454543),
(1910,"Mohan","mumbai",9023941),
(2123,"Biyush","Bombay""",1253358),
(3452,"Alexander","West Bengal",1212134),
(3921,"Mukesh","Manipur",4232321),
(5334,"Christy","pakistan",2311111),
(9021,"Rithika","Kashmir",1121344),
(9212,"Jessica","banglore",1233435),
(9875,"Stephen","chennai",1212133);

insert into product
values
(1,"tulip",198,5,"perfume"),
(2,"cornoto",50,21,"icecream"),
(3,"Pen",10,52,"Stationary"),
(4,"Lays",10,20,"snacks"),
(5,"mayanoise",90,10,"dip"),
(6,"jam",105,10,"spread"),
(7,"shampoo",5,90,"hair product"),
(8,"axe",210,4,"perfume"),
(9,"park avenue",901,2,"perfume"),
(10,"wattagirl",201,3,"perfume"),
(11,"pencil",4,10,"Stationary"),
(12,"sharpener",5,90,"Stationary"),
(13,"sketch pen",30,10,"Stationary"),
(14,"tape",15,30,"Stationary"),
(15,"paint",60,12,"Stationary"),
(16,"chocolate",25,50,"snacks"),
(17,"biscuts",60,26,"snacks"),
(18,"mango",100,21,"fruits"),
(19,"apple",120,9,"fruits"),
(20,"kiwi",140,4,"fruits"),
(21,"carrot",35,12,"vegetable"),
(22,"onion",22,38,"vegetable"),
(23,"tomato",21,15,"vegetable"),
(24,"serum",90,4,"hair product"),
(25,"conditioner",200,5,"hair product"),
(26,"oil bottle",40,2,"kitchen utensil");

select*from sales_datasets;

-- Q5. Write a query to add new columns, such as serial number and categories, to the Seales table

alter table sales_datasets
add
serial_number int;

alter table sales_datasets
add
categories int;

-- Q6. Write a query to change the stock field type to varchar in the product table 

alter table product
modify
stock varchar(255);

-- Q7 	Write a query to change the table name of customer to customer details

alter table customer_details 
rename to customer_detail;

-- Q8 write a query to drop the sl. no. and categories column from the sales table

alter table sales_datasets
drop serial_number;

alter table sales_datasets
drop categories;

-- Q9 write a query to display the order ID, Customer ID, order date ,price, quantity columns of the sales table

select order_no,c_id,order_date,price,qty from sales_datasets;

-- Q10 write a query to display the details where the category is stationary from the product table

select *from product
where category="stationary";

-- Q11 write query to display the unique category from the product table

select distinct category from product;

-- Q12  write a query to display the details of the sales from the sales table where quantity is greater than 2 and the price is less than 500

select* from sales_datasets 
where qty > 2 and price < 500;

-- Q13 write a query to display every customer whose name end with "a"

select * from customer_detail
where customer_name like "%a";

-- Q14 write a query to display product deatails in desecending order of price

select * from product
order by price desc;
 
 -- Q15 write a query to display product code and category from categories that have two or more product
 select * from product;
 
select category, count(category)
total_count from product group by category 
having total_count >= 2;
 
 -- Q16 write a query to combine the sales and product tables based on the order number and customer name duplicated  rows
 
 select order_no from sales_datasets
 
 


