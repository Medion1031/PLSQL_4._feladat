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

-- Tablak feltoltese

insert all
    -- Dealers
    into Dealers(id, name) values (1, 'Dealer_A')
    into Dealers(id, name) values (2, 'Dealer_B')
    into Dealers(id, name) values (3, 'Dealer_C')
    into Dealers(id, name) values (4, 'Dealer_D')

    -- Sellers
    into Sellers(id, name) values (1, 'Seller_A')
    into Sellers(id, name) values (2, 'Seller_B')
    into Sellers(id, name) values (3, 'Seller_C')
    into Sellers(id, name) values (4, 'Seller_D')

    -- Products
    into Products(id, name, dealer_id) values (1, 'Product_A', 1)
    into Products(id, name, dealer_id) values (2, 'Product_B', 1)
    into Products(id, name, dealer_id) values (3, 'Product_C', 1)
    into Products(id, name, dealer_id) values (4, 'Product_D', 1)
    into Products(id, name, dealer_id) values (5, 'Product_E', 2)
    into Products(id, name, dealer_id) values (6, 'Product_F', 2)
    into Products(id, name, dealer_id) values (7, 'Product_G', 2)
    into Products(id, name, dealer_id) values (8, 'Product_H', 2)
    into Products(id, name, dealer_id) values (9, 'Product_E', 3)
    into Products(id, name, dealer_id) values (10, 'Product_I', 3)
    into Products(id, name, dealer_id) values (11, 'Product_J', 3)
    into Products(id, name, dealer_id) values (12, 'Product_K', 3)
    into Products(id, name, dealer_id) values (13, 'Product_L', 4)
    into Products(id, name, dealer_id) values (14, 'Product_M', 4)
    into Products(id, name, dealer_id) values (15, 'Product_N', 4)
    into Products(id, name, dealer_id) values (16, 'Product_O', 4)

    -- Transactions
    into Transactions(id, product_id, seller_id, amount) values (1, 1, 1, 12)
    into Transactions(id, product_id, seller_id, amount) values (2, 2, 1, 2)
    into Transactions(id, product_id, seller_id, amount) values (3, 3, 1, 34)
    into Transactions(id, product_id, seller_id, amount) values (4, 4, 1, 2)
    into Transactions(id, product_id, seller_id, amount) values (5, 5, 1, 1)
    into Transactions(id, product_id, seller_id, amount) values (6, 6, 1, 6)
    into Transactions(id, product_id, seller_id, amount) values (7, 7, 1, 4)
    into Transactions(id, product_id, seller_id, amount) values (8, 8, 1, 132)
    into Transactions(id, product_id, seller_id, amount) values (9, 9, 1, 32)
    into Transactions(id, product_id, seller_id, amount) values (10, 10, 1, 7)
    into Transactions(id, product_id, seller_id, amount) values (11, 11, 1, 1)
    into Transactions(id, product_id, seller_id, amount) values (12, 12, 1, 8)
    into Transactions(id, product_id, seller_id, amount) values (13, 13, 1, 9)
    into Transactions(id, product_id, seller_id, amount) values (14, 14, 1, 10)
    into Transactions(id, product_id, seller_id, amount) values (15, 15, 1, 15)
    into Transactions(id, product_id, seller_id, amount) values (16, 16, 1, 6)
    into Transactions(id, product_id, seller_id, amount) values (17, 1, 2, 32)
    into Transactions(id, product_id, seller_id, amount) values (18, 2, 2, 4)
    into Transactions(id, product_id, seller_id, amount) values (19, 3, 2, 3)
    into Transactions(id, product_id, seller_id, amount) values (20, 4, 2, 5)
    into Transactions(id, product_id, seller_id, amount) values (21, 13, 2, 9)
    into Transactions(id, product_id, seller_id, amount) values (22, 14, 2, 16)
    into Transactions(id, product_id, seller_id, amount) values (23, 15, 2, 12)
    into Transactions(id, product_id, seller_id, amount) values (24, 16, 2, 1)
    into Transactions(id, product_id, seller_id, amount) values (25, 14, 3, 3)
    into Transactions(id, product_id, seller_id, amount) values (26, 15, 3, 14)
    into Transactions(id, product_id, seller_id, amount) values (27, 16, 3, 1)
    into Transactions(id, product_id, seller_id, amount) values (28, 1, 4, 12)
    into Transactions(id, product_id, seller_id, amount) values (29, 2, 4, 2)
    into Transactions(id, product_id, seller_id, amount) values (30, 3, 4, 34)
    into Transactions(id, product_id, seller_id, amount) values (31, 4, 4, 2)
    into Transactions(id, product_id, seller_id, amount) values (32, 5, 4, 1)
    into Transactions(id, product_id, seller_id, amount) values (33, 6, 4, 6)
    into Transactions(id, product_id, seller_id, amount) values (34, 7, 4, 4)
    into Transactions(id, product_id, seller_id, amount) values (35, 12, 4, 8)
    into Transactions(id, product_id, seller_id, amount) values (36, 13, 4, 9)
    into Transactions(id, product_id, seller_id, amount) values (37, 14, 4, 10)
    into Transactions(id, product_id, seller_id, amount) values (38, 15, 4, 15)
    into Transactions(id, product_id, seller_id, amount) values (39, 16, 4, 6)
select * from dual;