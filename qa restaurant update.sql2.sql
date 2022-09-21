create database qa_restaurants;

use qa_restaurants;

CREATE TABLE customers(
cust_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_name VARCHAR (100) NOT NULL,
phone_number CHAR (11) Not Null,
Primary key (cust_id));

show tables; 

CREATE TABLE items(
item_number INT UNIQUE NOT NULL AUTO_INCREMENT,
item_name VARCHAR (50) NOT NULL,
item_price decimal (10,2) NOT NULL,
primary key (item_number))
;
DROP TABLE items;


SHOW TABLES;

describe customers;
describe items;

INSERT INTO customers(cust_name, phone_number) VALUES ("dyllan","07584111111");

select * from customers;
update customers SET cust_name="john",phone_number="07546342544" WHERE cust_id=2;
update customers SET cust_name="paul",phone_number="07546435465" WHERE cust_id=3;
update customers SET cust_name="peter",phone_number="07546103456" WHERE cust_id=4;
update customers SET cust_name="amy",phone_number="07546397854" WHERE cust_id=5;

DELETE FROM customers WHERE cust_name=6;

select * from items;
INSERT INTO items(item_name, item_price) VALUES ("salad","10");
update items SET item_name="quinoa",item_price="7" WHERE item_number=2;
update items SET item_name="broccoli",item_price="8" WHERE item_number=3;
update items SET item_name="vegan meat",item_price="10" WHERE item_number=4;
update items SET item_name="quorn meat",item_price="4" WHERE item_number=5;

Create Table Orders(
orders_id INT UNIQUE NOT NULL AUTO_INCREMENT,
customer_id INT UNIQUE NOT NULL,
total_price DECIMAL (10,1) NOT NULL,
PRIMARY KEY (orders_id),
FOREIGN KEY (customer_id) REFERENCES customers (cust_id));

DROP TABLE orders;
SELECT * FROM orders;

CREATE TABLE orders_items(
oi_id INT UNIQUE NOT NULL AUTO_INCREMENT,
ord_id INT NOT NULL,
i_id INT NOT NULL,
quantity INT,
PRIMARY KEY(oi_id),
FOREIGN KEY (ord_id) REFERENCES orders (orders_id),
FOREIGN KEY (i_id) REFERENCES items (item_number));

SELECT * FROM orders_items;

INSERT INTO orders(customer_id, total_price) VALUES (01,10);
INSERT INTO orders(customer_id, total_price) VALUES (03,11);
INSERT INTO orders(customer_id, total_price) VALUES (02,14);
INSERT INTO orders(customer_id, total_price) VALUES (05,22);
INSERT INTO orders(customer_id, total_price) VALUES (04,32);

INSERT INTO orders_items(ord_id, i_id) VALUES (01,01);
INSERT INTO orders_items(ord_id, i_id) VALUES (02,03);
INSERT INTO orders_items(ord_id, i_id) VALUES (03,04);
INSERT INTO orders_items(ord_id, i_id) VALUES (04,05);
INSERT INTO orders_items(ord_id, i_id) VALUES (05,02);