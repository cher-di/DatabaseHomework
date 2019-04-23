create table customers (
  cust_login varchar(30) primary key,
  cust_nick varchar(50),
  cust_email varchar(100),
  cust_date date,
  cust_phone varchar(30),
  cust_payment numeric(16)
);