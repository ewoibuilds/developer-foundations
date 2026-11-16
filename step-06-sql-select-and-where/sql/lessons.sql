PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE lessons (
  id INTEGER PRIMARY KEY,
  title VARCHAR(200) NOT NULL,
  level VARCHAR(20) NOT NULL,
  minutes INTEGER NOT NULL
);
INSERT INTO lessons VALUES(1,'How the web works','beginner',20);
INSERT INTO lessons VALUES(2,'Your first commit','beginner',15);
INSERT INTO lessons VALUES(3,'Branches without fear','beginner',25);
INSERT INTO lessons VALUES(4,'Your first Laravel route','intermediate',30);
INSERT INTO lessons VALUES(5,'Build a REST API','intermediate',40);
INSERT INTO lessons VALUES(6,'Hash passwords properly','intermediate',25);
INSERT INTO lessons VALUES(7,'Database indexes','advanced',45);
INSERT INTO lessons VALUES(8,'Your first HTML page','beginner',20);
INSERT INTO lessons VALUES(9,'CSS layout basics','beginner',35);
INSERT INTO lessons VALUES(10,'Linux files and permissions','beginner',30);
INSERT INTO lessons VALUES(11,'SQL joins','intermediate',35);
INSERT INTO lessons VALUES(12,'Caching for faster pages','advanced',50);
COMMIT;
