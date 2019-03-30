--
-- Schema to create the burgers_db database and tables
--

-- Drop database if exists
drop database if exists burgers_db;

-- Create the burger_db database
create database burgers_db;

-- Set burger_db as the current database
use burgers_db;

-- Create the burgers table
create table burgers (
    id int primary key not null auto_increment,
    burger_name varchar(256) not null,
    devoured boolean,
    createdAt TIMESTAMP NOT NULL DEFAULT NOW(),
    updatedAt TIMESTAMP NOT NULL DEFAULT NOW()
);
