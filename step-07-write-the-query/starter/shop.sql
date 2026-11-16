CREATE TABLE products (
  id INTEGER PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  category VARCHAR(40) NOT NULL,
  price INTEGER NOT NULL,
  stock INTEGER NOT NULL
);

INSERT INTO products (id, name, category, price, stock) VALUES
  (1, 'Phone charger', 'electronics', 850, 40),
  (2, 'Earphones', 'electronics', 1200, 0),
  (3, 'Water bottle', 'home', 650, 25),
  (4, 'School bag', 'school', 2400, 12),
  (5, 'Exercise book (pack)', 'school', 300, 200),
  (6, 'Power bank', 'electronics', 3500, 7),
  (7, 'Lunch box', 'home', 900, 0),
  (8, 'Calculator', 'school', 1500, 18);
