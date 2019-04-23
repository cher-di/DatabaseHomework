create table developers (
  --суррогатный
  dev_id numeric(10) primary key,
  dev_name varchar(200),
  dev_founddate date,
  dev_adress varchar(200),
  dev_email varchar(100)
);