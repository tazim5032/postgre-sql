-- CREATE DATABASE bookstore_db

-- CREATE TABLE books (
--   id SERIAL PRIMARY KEY,
--   title VARCHAR(255) NOT NULL,
--   author VARCHAR(255) NOT NULL,
--   price NUMERIC(10, 2) CHECK (price >= 0),
--   stock INTEGER DEFAULT 0,
--   published_year INT
-- );

-- CREATE TABLE customers (
--   id SERIAL PRIMARY KEY,
--   name VARCHAR(255) NOT NULL,
--   email VARCHAR(255) UNIQUE NOT NULL,
--   joined_date DATE DEFAULT CURRENT_DATE
-- );

-- CREATE TABLE orders (
--   id SERIAL PRIMARY KEY,
--   customer_id INT NOT NULL,
--   book_id INT NOT NULL,
--   quantity INT CHECK (quantity > 0) NOT NULL,
--   order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--   FOREIGN KEY (customer_id) REFERENCES customers(id),
--   FOREIGN KEY (book_id) REFERENCES books(id)
-- );

-- INSERT INTO books (id, title, author, price, stock, published_year) VALUES
-- (1, 'The Pragmatic Programmer', 'Andrew Hunt', 40.00, 10, 1999),
-- (2, 'Clean Code', 'Robert C. Martin', 35.00, 5, 2008),
-- (3, 'You Don''t Know JS', 'Kyle Simpson', 30.00, 8, 2014),
-- (4, 'Refactoring', 'Martin Fowler', 50.00, 3, 1999),
-- (5, 'Database Design Principles', 'Jane Smith', 20.00, 0, 2018);

-- SELECT * FROM books;

-- INSERT INTO customers (id, name, email, joined_date) VALUES
-- (1, 'Alice', 'alice@email.com', '2023-01-10'),
-- (2, 'Bob', 'bob@email.com', '2022-05-15'),
-- (3, 'Charlie', 'charlie@email.com', '2023-06-20');

-- SELECT * FROM customers;

-- INSERT INTO orders (id, customer_id, book_id, quantity, order_date) VALUES
-- (1, 1, 2, 1, '2024-03-10'),
-- (2, 2, 1, 1, '2024-02-20'),
-- (3, 1, 3, 2, '2024-03-05');

-- SELECT * FROM orders;





--  1. Find books that are out of stock.
-- SELECT * FROM books
-- WHERE stock = 0;




-- 2. Retrieve the most expensive book in the store.
-- SELECT * FROM books ORDER BY price DESC LIMIT 1;



-- 3. Find the total number of orders placed by each customer.
-- SELECT customer_id, COUNT(*) AS total_orders
-- FROM orders
-- GROUP BY
--     customer_id;



-- 4. Calculate the total revenue generated from book sales.
-- SELECT SUM(b.price * o.quantity) AS total_revenue
-- FROM orders o
-- JOIN books b ON o.book_id = b.id;




-- 5. List all customers who have placed more than one order.
-- SELECT c.id, c.name, c.email, COUNT(o.id) AS order_count
-- FROM customers c
-- JOIN orders o ON c.id = o.customer_id
-- GROUP BY c.id
-- HAVING COUNT(o.id) > 1;


-- 6. Find the average price of books in the store.
-- SELECT AVG(price) AS average_price FROM books;



-- 7.  Increase the price of all books published before 2000 by 10%.
-- UPDATE books SET price = price * 1.10 WHERE published_year < 2000;


-- 8. Delete customers who haven't placed any orders.
-- DELETE FROM customers
-- WHERE
--     id NOT IN (
--         SELECT DISTINCT
--             customer_id
--         FROM orders
--     );