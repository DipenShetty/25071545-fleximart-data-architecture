
INSERT INTO dim_date VALUES
(20240101,'2024-01-01','Monday',1,1,'January','Q1',2024,false),
(20240102,'2024-01-02','Tuesday',2,1,'January','Q1',2024,false),
(20240103,'2024-01-03','Wednesday',3,1,'January','Q1',2024,false),
(20240104,'2024-01-04','Thursday',4,1,'January','Q1',2024,false),
(20240105,'2024-01-05','Friday',5,1,'January','Q1',2024,false),
(20240106,'2024-01-06','Saturday',6,1,'January','Q1',2024,true),
(20240107,'2024-01-07','Sunday',7,1,'January','Q1',2024,true),
(20240110,'2024-01-10','Wednesday',10,1,'January','Q1',2024,false),
(20240115,'2024-01-15','Monday',15,1,'January','Q1',2024,false),
(20240120,'2024-01-20','Saturday',20,1,'January','Q1',2024,true),
(20240125,'2024-01-25','Thursday',25,1,'January','Q1',2024,false),
(20240131,'2024-01-31','Wednesday',31,1,'January','Q1',2024,false),
(20240201,'2024-02-01','Thursday',1,2,'February','Q1',2024,false),
(20240205,'2024-02-05','Monday',5,2,'February','Q1',2024,false),
(20240210,'2024-02-10','Saturday',10,2,'February','Q1',2024,true),
(20240214,'2024-02-14','Wednesday',14,2,'February','Q1',2024,false),
(20240218,'2024-02-18','Sunday',18,2,'February','Q1',2024,true),
(20240222,'2024-02-22','Thursday',22,2,'February','Q1',2024,false),
(20240225,'2024-02-25','Sunday',25,2,'February','Q1',2024,true),
(20240228,'2024-02-28','Wednesday',28,2,'February','Q1',2024,false);

-- =====================
-- DIM PRODUCT (15 rows)
-- =====================
INSERT INTO dim_product (product_id, product_name, category, subcategory, unit_price) VALUES
('P001','Laptop Pro','Electronics','Laptop',50000),
('P002','Smartphone X','Electronics','Mobile',30000),
('P003','Wireless Earbuds','Electronics','Audio',5000),
('P004','4K Monitor','Electronics','Monitor',35000),
('P005','Gaming Mouse','Electronics','Accessories',2500),
('P006','Running Shoes','Fashion','Footwear',4000),
('P007','Jeans','Fashion','Clothing',3000),
('P008','T-Shirt','Fashion','Clothing',1500),
('P009','Sneakers','Fashion','Footwear',6000),
('P010','Formal Shirt','Fashion','Clothing',2000),
('P011','Office Chair','Furniture','Office',12000),
('P012','Study Table','Furniture','Home',15000),
('P013','Bookshelf','Furniture','Home',8000),
('P014','LED Lamp','Furniture','Decor',3000),
('P015','Sofa Set','Furniture','Living',45000);

-- =====================
-- DIM CUSTOMER (12 rows)
-- =====================
INSERT INTO dim_customer (customer_id, customer_name, city, state, customer_segment) VALUES
('C001','Rahul Sharma','Bangalore','Karnataka','Premium'),
('C002','Priya Patel','Mumbai','Maharashtra','Regular'),
('C003','Amit Kumar','Delhi','Delhi','Regular'),
('C004','Sneha Reddy','Hyderabad','Telangana','Premium'),
('C005','Vikram Singh','Chennai','Tamil Nadu','Regular'),
('C006','Anjali Mehta','Bangalore','Karnataka','Premium'),
('C007','Ravi Verma','Pune','Maharashtra','Regular'),
('C008','Pooja Iyer','Bangalore','Karnataka','Regular'),
('C009','Karthik Nair','Kochi','Kerala','Premium'),
('C010','Deepa Gupta','Delhi','Delhi','Regular'),
('C011','Arjun Rao','Hyderabad','Telangana','Premium'),
('C012','Lakshmi Krishnan','Chennai','Tamil Nadu','Regular');

-- =====================
-- FACT SALES (40 rows)
-- =====================
INSERT INTO fact_sales (date_key, product_key, customer_key, quantity_sold, unit_price, discount_amount, total_amount) VALUES
(20240101,1,1,2,50000,0,100000),
(20240106,2,2,1,30000,1000,29000),
(20240107,3,3,3,5000,0,15000),
(20240110,4,4,1,35000,2000,33000),
(20240115,5,5,4,2500,0,10000),
(20240120,6,6,2,4000,500,7500),
(20240125,7,7,1,3000,0,3000),
(20240201,8,8,5,1500,0,7500),
(20240205,9,9,2,6000,0,12000),
(20240210,10,10,3,2000,0,6000),
(20240214,11,11,1,12000,1000,11000),
(20240218,12,12,1,15000,0,15000),
(20240222,13,1,2,8000,0,16000),
(20240225,14,2,3,3000,0,9000),
(20240228,15,3,1,45000,5000,40000),
(20240101,2,4,1,30000,0,30000),
(20240106,3,5,2,5000,0,10000),
(20240107,4,6,1,35000,0,35000),
(20240110,5,7,3,2500,0,7500),
(20240115,6,8,2,4000,0,8000),
(20240120,7,9,1,3000,0,3000),
(20240125,8,10,4,1500,0,6000),
(20240201,9,11,2,6000,0,12000),
(20240205,10,12,3,2000,0,6000),
(20240210,11,1,1,12000,0,12000),
(20240214,12,2,1,15000,0,15000),
(20240218,13,3,2,8000,0,16000),
(20240222,14,4,3,3000,0,9000),
(20240225,15,5,1,45000,0,45000),
(20240228,1,6,1,50000,5000,45000);