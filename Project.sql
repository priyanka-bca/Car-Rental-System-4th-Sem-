create table login(
logid int primary key identity(1,1),
username nvarchar(200),
password nvarchar(200),
)

create table customer(
customerid int primary key identity(1,1),
cname nvarchar(200),
contact nvarchar(200),
address varchar(200),
logid int references login(logid),
)

create table car(
carid int primary key identity(1,1),
customerid int references customer(customerid),
cregno nvarchar(100),
carname nvarchar(200),
cbrand nvarchar(100),
cmodel nvarchar(100),
ccolor nvarchar(200),
cavailable nvarchar(200),
price real
)

create table rentalorder(
carid int references car(carid),
rregno nvarchar(200),
rentid int primary key identity(1,1),
cname nvarchar(200),
rentdate date,
returndate date,
fees real
)

create table returns(
rid int primary key identity(1,1),
rentid int references rentalorder(rentid),
fine real,
delay real,
returndate date,
cname nvarchar(200),
)

create table admin(
logid int references login(logid),
adminid int primary key identity(1,1),
adpassword nvarchar(200),
)
