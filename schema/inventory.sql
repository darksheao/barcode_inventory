create database inventory;
use inventory;

create table users (
	id int(11) not null auto_increment,
    username varchar(50) not null,
    pass varchar(255) not null comment 'this is to support php function password_hash',
    email varchar(255) null,
    active tinyint(1) not null default 0,
    permission varchar(255) null comment 'CSV of permission ids, purposfully anti-normalized',
    officeId int(11) null,
    primary key(id)
);

create table permissions (
	id int(11) not null auto_increment,
    name varchar(255),
    primary key(id)
);

create table category (
	id int(11) not null auto_increment,
    name varchar(255),
    primary key(id)
);

create table sub_cat (
	id int(11) not null auto_increment,
    catId int(11) not null,
    name varchar(255),
    primary key(id)
);

create table office (
	id int(11) not null auto_increment,
    name varchar(255),
    primary key(id)
);

create table items (
	id int(11) not null auto_increment,
    name varchar(255),
    price double not null default 0.00,
    dateAquired date null,
    officeId int(11) null,
    subCatId int(11) null,
    primary key(id)
);

create table bindings (
	id int(11) not null auto_increment,
    barcode varchar(30) not null,
    userId int(11) null,
    itemId int(11) null,
    status int(1) not null default 0 comment 'constants file in php, 0 new, 1 used, 2 retired',
    primary key(id)
);

create user barcode_app;