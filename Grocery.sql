select vdani.get_bead('PBCD7O') from dual;

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
    dealer_id int,
    price int
);

create table Transactions(
    id int primary key,
    product_id int,
    seller_id int,
    amount int
);

select * from Transactions;
select * from Products;
select * from Dealers;
select * from Sellers;

drop table Dealers;
drop table Sellers;
drop table Transactions;
drop table Products;



insert all
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

set serveroutput on;

create or replace function countSold(idetifier in int)
return int as 
    specificAmount int := 0;

begin
    select SUM(amount) 
    into specificAmount
    from Transactions
    where product_id = idetifier
    group by product_id;

    
    if specificamount = 0 then 
        raise NO_DATA_FOUND;
    end if;

    
    return specificAmount;
    
exception 
        when NO_DATA_FOUND then 
            raise_application_error(-20210, 'Invalid identifier');
            return null;
end;
/

select countSold(56) from dual;


create or replace procedure getDiscount(percent in int)
is 
    firstName Products.name%type;
    secondName Products.name%type;
    thirdName Products.name%type;
begin 
    update Products 
    set price = price / 100 * (100-percent)
    where id in (select id 
        from Products 
        inner join (
            select *
            from (
                select product_id, sum(amount)
                from Transactions 
                group by product_id
                order by sum(amount) asc
            ) 
            where ROWNUM <= 3
        )
        on id = product_id);
        
       select name 
       into firstName
        from Products 
        inner join (
            select *
            from (
                select product_id, sum(amount)
                from Transactions 
                group by product_id
                order by sum(amount) asc
                FETCH NEXT 1 ROWS ONLY
            ) 
        )
        on id = product_id; 
        
        select name 
       into secondName
        from Products 
        inner join (
            select *
            from (
                select product_id, sum(amount)
                from Transactions 
                group by product_id
                order by sum(amount) asc
                OFFSET 1 ROWS 
                FETCH NEXT 1 ROWS ONLY
            ) 
        )
        on id = product_id; 
        
        select name 
       into thirdName
        from Products 
        inner join (
            select *
            from (
                select product_id, sum(amount)
                from Transactions 
                group by product_id
                order by sum(amount) asc
                OFFSET 2 ROWS 
                FETCH NEXT 1 ROWS ONLY
            ) 
        )
        on id = product_id; 
        DBMS_OUTPUT.PUT_LINE(firstName || ':' || secondName || ':' || thirdName );
end;
/


create or replace trigger updateTrigger
after update
on Products
for each row
begin 
    DBMS_OUTPUT.PUT_LINE('new price: ' || :new.price || ' Old price: ' || :old.price);
end;
/
