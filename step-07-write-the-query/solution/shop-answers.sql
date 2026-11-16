-- 1. Which products are out of stock? Show the name only.
SELECT name FROM products WHERE stock = 0;

-- 2. Which school products cost less than 2,000? Show name and price.
SELECT name, price FROM products WHERE category = 'school' AND price < 2000;

-- 3. List all electronics, most expensive first.
SELECT name, price FROM products WHERE category = 'electronics' ORDER BY price DESC;

-- 4. What are the three cheapest products?
SELECT name, price FROM products ORDER BY price ASC LIMIT 3;

-- 5. How many products are in each category?
SELECT category, COUNT(*) AS products FROM products GROUP BY category;

-- 6. What is the total value of stock (price times stock) for each category?
SELECT category, SUM(price * stock) AS stock_value FROM products GROUP BY category;
