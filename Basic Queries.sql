--BASIC QUERIES

--1) retrieve all the books in the "Fiction" genre
select * from Books
where Genre = 'Fiction';

--2) find books published after the year 1950
select * from Books
where Published_Year > 1950;

--3) list all customers from canada
select * from customers
where country = 'Canada';

--4) show order placed in november 2023
select * from orders
where order_date between '2023-11-01' and '2023-11-30';

--5) retrieve the total stock of books available
select sum(stock) as total_stock from books;

--6) find the details of the most expensive book
select * from books
order by Price desc limit 1;

--7) show all customer who ordered more than one quantity of a book
select * from orders
where quantity > 1;

--8) retrieve all orders where total amount exceeds $20
select * from orders
where Total_Amount >20;

--9) list all the genre available in the book table
select distinct genre from books;

--10) find all the books with lowest stock
select * from books
order by stock limit 5;

--11) calculate the total revenue generated from all orders
select sum(total_amount) as Revenue from orders;