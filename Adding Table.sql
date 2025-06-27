create database OnlineBookstore;

drop table if exists Books;
create table Books(
Book_ID serial primary key,
Title varchar(100),
Author varchar(100),
Genre varchar(50),
Published_Year int,
Price Numeric(10,2),
Stock int
);
select * from books;



drop table if exists customers;
create table customers(
Customer_ID serial primary key,
Name varchar(100),
Email varchar(100),
Phone Varchar(15),
City Varchar(50),
Country varchar(150)
);
select * from customers;


drop table if exists orders;
create table orders(
Order_ID serial primary key,
Customer_ID int references customers(Customer_ID),
Book_ID int references Books(Book_ID),
Order_Date DATE,
Quantity int,
Total_Amount numeric(10,2)
);
select * from orders;


--Import the table directly or with code