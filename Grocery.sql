-- Tablak letrehozasa

create table Sellers(
    id int primary key,
    name VARCHAR(20)
);

create table Dealers(
    id int primary key,
    name VARCHAR(20)
); 

create table Products(
    id int primary key,
    name varchar(20),
    dealer_id int
);

create table Transactions(
    id int primary key,
    product_id int,
    seller_id int
);