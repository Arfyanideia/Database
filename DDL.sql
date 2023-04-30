CREATE DATABASE IF NOT EXISTS db_tubes;
use db_tubes;
#===========================================================

#DDL
#Tabel Location
create table Location(
	branch varchar (5),
    city varchar(20),
	constraint pkBranch primary key(branch) 
	);
desc Location;
#===========================================================

#Tabel supermarkets
CREATE  TABLE Supermarkets(
	invoice_id int(12),
	branch varchar(5),
    constraint pkSupermarket primary key(invoice_id)
	);
desc Supermarkets;
#===========================================================

#Tabel Product
create table Product(
	product_id varchar(5),
    product_line varchar(25), 
	constraint pkProducts primary key(product_id)
	); 
desc Product;
#===========================================================

#Tabel Items
create table Items(
	invoice_id int(12),
	product_id varchar(5),
	date_time date,
    unit_price int(10),
	quantity int (10),
    total int(15),
    constraint pk primary key(invoice_id)
	# constraint fk1 foreign key (invoice_id) REFERENCES Supermarkets (invoice_id),
	# constraint fk2 foreign key (product_id) REFERENCES Products (product_id)
	); 
desc Items;
#===========================================================

alter table Product add tax int(10);
desc Product;
#===========================================================

alter table Product change tax Payment int(10);
desc Product;
#===========================================================

alter table Product modify Payment varchar(10);
desc Product;
#===========================================================

alter table Product drop Payment;
desc Product;
#===========================================================

DROP TABLE Items;