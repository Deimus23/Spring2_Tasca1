drop database pizzeria;
create database if not exists Pizzeria;
use Pizzeria;
create table if not exists Province(
provinceId int auto_increment primary key,
provinceName varchar(50) not null
);
create table if not exists Locality(
localityId int auto_increment primary key,
localityName varchar(50)not null,
provinceId int not null,
foreign key(provinceId) references Province(provinceId)
);

create table if not exists Category(
categoryId int auto_increment primary key,
categoryName varchar(50) not null
);

create table if not exists Products(
productsId int auto_increment primary key,
product enum('pizza','burger','drink'),
productName varchar(50) not null,
productDescription varchar(255) not null,
productPhotoPath varchar(500) not null,
productPrice float (9) not null,
categoryId int,
foreign key(categoryId) references Category(categoryId)
);

create	table  if not exists Costumer (
costumerId int auto_increment primary key,
name  varchar(25) not null,
lastnames varchar(50) not null,
address varchar(60) not null,
postalcolde varchar (5) not null,
localityId int not null,
NumberPhone  char (10) not null,
foreign key(localityId) references Locality(localityId)
);

create table if not exists Employee(
employeeId int auto_increment primary key,
employeeName varchar(50) not null,
employeeLastnames varchar(100) not null,
employeeNIF varchar(9) not null,
employeePhone varchar(15) not null,
employeeTypeId enum('cooker','dealer')not null
);

create table if not exists Orders(
ordersId int auto_increment primary key,
ordersDates datetime not null,
ordersType enum('delivery','take away')not null,
productsId int not null,
costumerId int not null,
shopId int not null,
employeeId  int not null,
localityId int ,
foreign key(productsId) references Products(productsId),
foreign key(costumerId) references Costumer(costumerId),
foreign key(employeeId) references Employee(employeeId),
foreign key(localityId) references Locality(localityId)
);

create table if not exists Store(
storeID int auto_increment primary key,
storeName varchar(50) not null,
storeAddress varchar(255) not null,
postalCode varchar(5) not null,
ordersId int not null,
localityId int not null,
employeeId int not null,
foreign key (localityID) references Locality(localityId),
foreign key (ordersId) references  Orders(ordersID),
foreign key(employeeId) references Employee(employeeID)
);