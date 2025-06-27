--ADVANCED QUERIES

-- 1) retrieve the total number of books sold for each genre
select b.genre, sum(o.quantity) as total_books_sold
from orders o
join books b
on o.book_id = b.book_id
group by b.genre;

-- 2) find the average price of books in the fantasy genre
select avg(price) as Average from books
where genre = 'Fantasy';

-- 3) list customers who have atleast placed 2 orders
select o.customer_id, c.name, count(o.order_id) as Order_Count
from orders o
join customers c on o.customer_id = c.customer_id
group by o.customer_id, c.name
having count(order_id) >=2 ;

-- 4) most frequently ordered book
select b.book_id, b.title, count(o.order_id) as order_count
from orders o
join books b on  b.book_id = o.book_id
group by b.Book_id, b.title
order by order_count desc limit 1;


-- 5) show top 3 most expensive books of 'Fantasy' Genre
select title, genre, price from books
where genre = 'Fantasy'
order by price desc limit 3;


-- 6) retrieve total qunatity of books sold by each author
select b.author, Sum(o.quantity) as Sold
from books b
join orders o on b.book_id = o.book_id
group by b.author;


-- 7) list the cities where customers who spent over $30 are located
select distinct c.city, o.total_amount
from customers c
join orders o on c.customer_id = o.customer_id
where o.total_amount>30;

-- 8) find the customer who spent most on orders
select c.name, Sum(o.total_amount)as Total_spent
from customers c
join orders o on c.customer_id = o.customer_id
group by c.name
order by total_spent desc limit 3;

-- 9) calculate the stock remaining after fullfilling all orders
select b.book_id, b.title, b.stock, coalesce(sum(o.quantity),0) as Order_quantity,
		b.stock - coalesce(sum(o.quantity),0) as Remaining_Books
from books b
left join orders o on b.book_id = o.book_id
group by b.book_id;


-- 10)
-- 11)
-- 12)
