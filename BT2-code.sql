create database QuanLyBanHang2;
create table Customer(
cId int primary key,
cName varchar(255),
cAge int
);
create table Orders(
oId int primary key,
cId int,
oDate datetime,
oTotalPrice float,
foreign key(cId) references Customer(cId)
);
create table Product(
pId int primary key,
pName varchar(255),
pPrice float
);
create table OrderDetail(
oId int,
pId int,
odQty int,
foreign key (oId) references Orders(oId),
foreign key (pId) references Product(pId)
);
