DAY 1 :
-------------------------


CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

INSERT INTO customers VALUES
(1,'Amit','Sharma','amit@gmail.com','Delhi','2023-01-10'),
(2,'Priya','Verma','priya@gmail.com','Mumbai','2023-02-15'),
(3,'Rahul','Das','rahul@gmail.com','Kolkata','2023-03-12'),
(4,'Sneha','Iyer','sneha@gmail.com','Chennai','2023-01-25'),
(5,'Vikas','Yadav','vikas@gmail.com','Delhi','2023-04-18'),
(6,'Anjali','Mehta','anjali@gmail.com','Pune','2023-05-10'),
(7,'Rohit','Gupta','rohit@gmail.com','Mumbai','2023-06-22'),
(8,'Neha','Kapoor','neha@gmail.com','Delhi','2023-07-01'),
(9,'Karan','Malhotra','karan@gmail.com','Bangalore','2023-08-11'),
(10,'Pooja','Singh','pooja@gmail.com','Hyderabad','2023-09-05'),
(11,'Arjun','Reddy','arjun@gmail.com','Hyderabad','2023-09-12'),
(12,'Simran','Kaur','simran@gmail.com','Chandigarh','2023-10-03'),
(13,'Manish','Pandey','manish@gmail.com','Lucknow','2023-11-20'),
(14,'Divya','Nair','divya@gmail.com','Chennai','2023-12-15'),
(15,'Sahil','Arora','sahil@gmail.com','Delhi','2024-01-05');

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

INSERT INTO products VALUES
(101,'Laptop','Electronics',75000,10),
(102,'Smartphone','Electronics',30000,20),
(103,'Headphones','Electronics',2000,50),
(104,'Office Chair','Furniture',8000,15),
(105,'Desk','Furniture',12000,10),
(106,'Monitor','Electronics',15000,12),
(107,'Keyboard','Electronics',1500,40),
(108,'Mouse','Electronics',800,60),
(109,'Tablet','Electronics',25000,18),
(110,'Printer','Electronics',10000,8),
(111,'Bookshelf','Furniture',7000,9),
(112,'Backpack','Accessories',2500,30),
(113,'Shoes','Fashion',4000,25),
(114,'Watch','Fashion',6000,22),
(115,'Water Bottle','Accessories',500,100);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    employee_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders VALUES
(1001,1,'2024-01-10',201),
(1002,2,'2024-01-11',202),
(1003,3,'2024-01-12',201),
(1004,4,'2024-01-15',203),
(1005,1,'2024-01-20',202),
(1006,5,'2024-01-21',201),
(1007,6,'2024-01-22',203),
(1008,7,'2024-01-25',202),
(1009,8,'2024-01-28',201),
(1010,9,'2024-02-01',203),
(1011,10,'2024-02-05',202),
(1012,11,'2024-02-07',201),
(1013,12,'2024-02-08',203),
(1014,13,'2024-02-10',202),
(1015,14,'2024-02-12',201),
(1016,15,'2024-02-15',203),
(1017,3,'2024-02-18',202),
(1018,5,'2024-02-20',201);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO order_items VALUES
(1,1001,101,1),
(2,1001,103,2),
(3,1002,102,1),
(4,1003,104,1),
(5,1004,105,1),
(6,1005,106,1),
(7,1006,103,3),
(8,1007,107,2),
(9,1008,108,2),
(10,1009,109,1),
(11,1010,110,1),
(12,1011,111,1),
(13,1012,112,2),
(14,1013,113,1),
(15,1014,114,1),
(16,1015,115,5),
(17,1016,101,1),
(18,1017,102,1),
(19,1018,103,4),
(20,1018,104,1);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    payment_date DATE,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

INSERT INTO payments VALUES
(1,1001,79000,'UPI','2024-01-10'),
(2,1002,30000,'Credit Card','2024-01-11'),
(3,1003,8000,'Debit Card','2024-01-12'),
(4,1004,12000,'UPI','2024-01-15'),
(5,1005,15000,'Credit Card','2024-01-20'),
(6,1006,6000,'UPI','2024-01-21'),
(7,1007,3000,'Debit Card','2024-01-22'),
(8,1008,1600,'UPI','2024-01-25'),
(9,1009,25000,'Credit Card','2024-01-28'),
(10,1010,10000,'UPI','2024-02-01'),
(11,1011,7000,'Debit Card','2024-02-05'),
(12,1012,5000,'UPI','2024-02-07'),
(13,1013,4000,'Credit Card','2024-02-08'),
(14,1014,6000,'UPI','2024-02-10'),
(15,1015,2500,'Debit Card','2024-02-12');

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    hire_date DATE
);

INSERT INTO employees VALUES
(201,'Ramesh','Kumar','Sales','2022-01-10'),
(202,'Suresh','Patil','Sales','2022-02-15'),
(203,'Meena','Joshi','Support','2022-03-20');
