drop database opticalshop;
create database OpticalShop;
USE OpticalShop;
create table if not exists Suppliers(
SupplierID int auto_increment primary key,
Name varchar(255) not null,
Street varchar(255) not null,
Number varchar(50) not null,
Floor varchar(50) not null,
Door varchar(50) not null,
City varchar(100) not null,
PostalCode varchar(20) not null,
Country varchar(100) not null,
Phone varchar(20) not null,
Fax varchar(20) ,
NIF varchar(20)not null,
PrincipalBrand varchar(50) not null,
RestofBrand varchar(500) not null
);
create table if not exists Glasses(
GlassesID int auto_increment primary key,
Brand varchar(255)not null,
FrameType enum('Floaring','Plastic','Metal')not null,
FrameColor varchar(50) not null,
Price float(10,2) not null,
SupplierID int not null,
leftLensGraduation double(10,3)not null,
rigthLensGraduation double(10,3) not null,
lensColor varchar(50) not null,
foreign key(SupplierID)references Suppliers(SupplierID) 
);
create table if not exists Clients(
ClientID int auto_increment primary key,
Name varchar(255)not null,
Address varchar (255) not null,
Phone varchar(20) not null,
Email varchar(255) not null,
RegistationDate date not null,
RecomendedBy int not null,
foreign key(RecomendedBy)references Clients(ClientID)
);
create table if not exists Employees(
EmployeeID int auto_increment primary key,
name varchar(255) not null,
Position varchar(100) not null,
Phone varchar(20) not null,
Email varchar(100)not null
);
create table if not exists Sales(
SaleID int auto_increment primary key,
SalesDate date not null,
GlassID int not null,
ClientID int not null,
EmployeeID int not null,
foreign key (GlassId) references Glasses(GlassesID),
foreign key (ClientID) references Clients(ClientID),
foreign key (EmployeeID) references Employees(EmployeeID)
);





