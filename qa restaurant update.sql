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
update items SET item_name="pie",item_price="5" WHERE cust_id=2;