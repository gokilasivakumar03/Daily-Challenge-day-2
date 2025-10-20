create database onlinebookstore;
use onlinebookstore;

-- create books table with primary key --
create table books(
book_id int primary key,
title varchar(50),
author varchar(50),
);

create table orders(
order_id int primary key,
order_date date,
book_id int,
foreign key (book_id) references books(book_id)
);

-- UNIQUE Constraint
 alter table books add ISBN varchar(20) unique;
 
 insert into books (book_id,title,author) value (2203,"poonachi","perumal_murugan");
 insert into orders (order_id,order_date,book_id) value (281,"2025-06-28",2203);
 select*from books;
 select*from orders;
 -- DELETE vs TRUNCATE
delete from orders where order_id = 281;
truncate table orders;
																																					